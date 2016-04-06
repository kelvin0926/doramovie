// ***************************
// CSB 修改版 DbHelper类库文件
// Time 2009-08-11
// 修改内容为：
// 不用接口进行sqlconnection、sqlcommand、DbDataAdapter、DbParameter的创建过程
// 删除了翻页代码
// ***************************
using System;
using System.Data;
using System.Data.Common;
using System.Collections;
using System.Configuration;
using System.Web;
using System.Text.RegularExpressions;
using MySql.Data.MySqlClient;

namespace DataBase
{

    public abstract class Provider_Class
    {
        public static DbCommand CreateCommand()
        {
            return new MySqlCommand();
        }
        public static DbConnection CreateConnection()
        {
            return new MySqlConnection();
        }
        public static DbDataAdapter CreateDataAdapter()
        {
            return new MySqlDataAdapter();
        }
        public static DbParameter CreateParameter()
        {
            return new MySqlParameter();
        }
    }

    public abstract class DbHelper : Provider_Class
    {
        public static void SetTimeoutDefault()
        {
            Timeout = 30;
        }

        public static int Timeout = 30;
        public static string CmsConString = ConfigurationManager.ConnectionStrings["connection"].ConnectionString;

        public static int ExecuteNonQuery(CommandType cmdType, string cmdText, params DbParameter[] commandParameters)
        {
            return ExecuteNonQuery(CmsConString, cmdType, cmdText, commandParameters);
        }

        public static int ExecuteNonQuery(string connectionString, CommandType cmdType, string cmdText, params DbParameter[] commandParameters)
        {
            DbCommand cmd = CreateCommand();

            using (DbConnection conn = CreateConnection())
            {
                conn.ConnectionString = connectionString;
                PrepareCommand(cmd, conn, null, cmdType, cmdText, commandParameters);
                int val = cmd.ExecuteNonQuery();
                cmd.Parameters.Clear();
                return val;
            }
        }
        public static int ExecuteNonQuery(DbConnection connection, CommandType cmdType, string cmdText, params DbParameter[] commandParameters)
        {

            DbCommand cmd = CreateCommand();

            PrepareCommand(cmd, connection, null, cmdType, cmdText, commandParameters);
            int val = cmd.ExecuteNonQuery();
            cmd.Parameters.Clear();
            return val;
        }

        public static int ExecuteNonQuery(DbTransaction trans, CommandType cmdType, string cmdText, params DbParameter[] commandParameters)
        {
            DbCommand cmd = CreateCommand();
            PrepareCommand(cmd, trans.Connection, trans, cmdType, cmdText, commandParameters);
            int val = cmd.ExecuteNonQuery();
            cmd.Parameters.Clear();
            return val;
        }
        public static DbDataReader ExecuteReader(CommandType cmdType, string cmdText, params DbParameter[] commandParameters)
        {
            return ExecuteReader(CmsConString, cmdType, cmdText, commandParameters);
        }
        public static DbDataReader ExecuteReader(string connectionString, CommandType cmdType, string cmdText, params DbParameter[] commandParameters)
        {
            DbCommand cmd = CreateCommand();
            DbConnection conn = CreateConnection();
            conn.ConnectionString = connectionString;
            // we use a try/catch here because if the method throws an exception we want to 
            // close the connection throw code, because no datareader will exist, hence the 
            // commandBehaviour.CloseConnection will not work
            try
            {
                PrepareCommand(cmd, conn, null, cmdType, cmdText, commandParameters);
                DbDataReader rdr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
                cmd.Parameters.Clear();
                return rdr;
            }
            catch
            {
                conn.Close();
                throw;
            }
        }

        public static DbDataReader ExecuteReader(DbConnection connection, CommandType cmdType, string cmdText, params DbParameter[] commandParameters)
        {
            DbCommand cmd = CreateCommand();
            // we use a try/catch here because if the method throws an exception we want to 
            // close the connection throw code, because no datareader will exist, hence the 
            // commandBehaviour.CloseConnection will not work
            PrepareCommand(cmd, connection, null, cmdType, cmdText, commandParameters);
            DbDataReader rdr = cmd.ExecuteReader();
            cmd.Parameters.Clear();
            return rdr;
        }
        public static object ExecuteScalar(CommandType cmdType, string cmdText, params DbParameter[] commandParameters)
        {
            return ExecuteScalar(CmsConString, cmdType, cmdText, commandParameters);
        }

        public static object ExecuteScalar(string connectionString, CommandType cmdType, string cmdText, params DbParameter[] commandParameters)
        {
            DbCommand cmd = CreateCommand();

            using (DbConnection connection = CreateConnection())
            {
                connection.ConnectionString = connectionString;
                PrepareCommand(cmd, connection, null, cmdType, cmdText, commandParameters);
                object val = cmd.ExecuteScalar();
                cmd.Parameters.Clear();
                return val;
            }
        }

        public static object ExecuteScalar(DbConnection connection, CommandType cmdType, string cmdText, params DbParameter[] commandParameters)
        {

            DbCommand cmd = CreateCommand();

            PrepareCommand(cmd, connection, null, cmdType, cmdText, commandParameters);
            object val = cmd.ExecuteScalar();
            cmd.Parameters.Clear();
            return val;
        }

        public static object ExecuteScalar(DbTransaction trans, CommandType cmdType, string cmdText, params DbParameter[] commandParameters)
        {
            DbCommand cmd = CreateCommand();

            PrepareCommand(cmd, trans.Connection, trans, cmdType, cmdText, commandParameters);
            object val = cmd.ExecuteScalar();
            cmd.Parameters.Clear();
            return val;
        }

        public static DataTable ExecuteTable(CommandType cmdType, string cmdText, params DbParameter[] commandParameters)
        {
            return ExecuteTable(CmsConString, cmdType, cmdText, commandParameters);
        }

        public static DataTable ExecuteTable(string connectionString, CommandType cmdType, string cmdText, params DbParameter[] commandParameters)
        {
            DbCommand cmd = CreateCommand();

            using (DbConnection connection = CreateConnection())
            {
                connection.ConnectionString = connectionString;
                PrepareCommand(cmd, connection, null, cmdType, cmdText, commandParameters);
                DbDataAdapter ap = CreateDataAdapter();
                ap.SelectCommand = cmd;
                DataSet st = new DataSet();
                ap.Fill(st, "Result");
                cmd.Parameters.Clear();
                return st.Tables["Result"];
            }
        }

        public static DataTable ExecuteTable(DbConnection connection, CommandType cmdType, string cmdText, params DbParameter[] commandParameters)
        {

            DbCommand cmd = CreateCommand();
            PrepareCommand(cmd, connection, null, cmdType, cmdText, commandParameters);
            DbDataAdapter ap = CreateDataAdapter();
            ap.SelectCommand = cmd;
            DataSet st = new DataSet();
            ap.Fill(st, "Result");
            cmd.Parameters.Clear();
            return st.Tables["Result"];
        }

        private static void PrepareCommand(DbCommand cmd, DbConnection conn, DbTransaction trans, CommandType cmdType, string cmdText, DbParameter[] cmdParms)
        {

            if (conn.State != ConnectionState.Open)
                conn.Open();

            cmd.Connection = conn;
            cmd.CommandText = cmdText;

            if (trans != null)
                cmd.Transaction = trans;

            cmd.CommandType = cmdType;
            cmd.CommandTimeout = Timeout;
            if (cmdParms != null)
            {
                foreach (DbParameter parm in cmdParms)
                    if (parm != null)
                        cmd.Parameters.Add(parm);
            }
        }

        #region 格式化文本（防止SQL注入）
        public static string MyFormatstr(string html)
        {
            Regex regex1 = new Regex(@"<script[\s\S]+</script *>", RegexOptions.IgnoreCase);
            Regex regex2 = new Regex(@" href *= *[\s\S]*script *:", RegexOptions.IgnoreCase);
            Regex regex3 = new Regex(@" on[\s\S]*=", RegexOptions.IgnoreCase);
            Regex regex4 = new Regex(@"<iframe[\s\S]+</iframe *>", RegexOptions.IgnoreCase);
            Regex regex5 = new Regex(@"<frameset[\s\S]+</frameset *>", System.Text.RegularExpressions.RegexOptions.IgnoreCase);
            //System.Text.RegularExpressions.Regex regex6 = new System.Text.RegularExpressions.Regex(@"\<img[^\>]+\>", System.Text.RegularExpressions.RegexOptions.IgnoreCase);
            //System.Text.RegularExpressions.Regex regex7 = new System.Text.RegularExpressions.Regex(@"</p>", System.Text.RegularExpressions.RegexOptions.IgnoreCase);
            //System.Text.RegularExpressions.Regex regex8 = new System.Text.RegularExpressions.Regex(@"<p>", System.Text.RegularExpressions.RegexOptions.IgnoreCase);
            //System.Text.RegularExpressions.Regex regex9 = new System.Text.RegularExpressions.Regex(@"<[^>]*>", System.Text.RegularExpressions.RegexOptions.IgnoreCase);
            Regex regex10 = new Regex(@"select", RegexOptions.IgnoreCase);
            Regex regex11 = new Regex(@"update", RegexOptions.IgnoreCase);
            Regex regex12 = new Regex(@"delete", RegexOptions.IgnoreCase);
            html = regex1.Replace(html, ""); //过滤<script></script>标记
            html = regex2.Replace(html, ""); //过滤href=javascript: (<A>) 属性
            html = regex3.Replace(html, " _disibledevent="); //过滤其它控件的on...事件
            html = regex4.Replace(html, ""); //过滤iframe
            html = regex5.Replace(html, ""); //过滤frameset
            //html = regex6.Replace(html, ""); //过滤frameset
            //html = regex7.Replace(html, ""); //过滤frameset
            //html = regex8.Replace(html, ""); //过滤frameset
            //html = regex9.Replace(html, "");
            html = regex10.Replace(html, "s_elect");
            html = regex11.Replace(html, "u_pudate");
            html = regex12.Replace(html, "d_elete");
            html = html.Replace("'", "’");
            html = html.Replace("&nbsp;", " ");
            //html = html.Replace("</strong>", "");
            //html = html.Replace("<strong>", "");
            return html;
        }
        #endregion

        #region 输出文本时不带html标签格式
        public static string MyFormatnoHtml(string str)
        {
            //str = str.Replace("<p>", "");
            Regex regex1 = new Regex(@"<p>", RegexOptions.IgnoreCase);
            Regex regex2 = new Regex(@"</p>", RegexOptions.IgnoreCase);
            Regex regex3 = new Regex(@"<br />", RegexOptions.IgnoreCase);
            //Regex regex4 = new Regex("<[^>]*>", RegexOptions.IgnoreCase);

            str = regex1.Replace(str, "");
            str = regex2.Replace(str, "");
            str = regex3.Replace(str, "");
            str = Regex.Replace(str, "</?[^>]+>", "", RegexOptions.IgnoreCase);
            str = Regex.Replace(str, "\t", "", RegexOptions.IgnoreCase);
            str = Regex.Replace(str, "　", "", RegexOptions.IgnoreCase);
            str = Regex.Replace(str, " ", "", RegexOptions.IgnoreCase);
            str = Regex.Replace(str, "\r", "", RegexOptions.IgnoreCase);
            str = Regex.Replace(str, "\n", "", RegexOptions.IgnoreCase);

            return str;
        }
        #endregion

        #region 获取文中第一个图片地址
        /// <summary> 
        /// 获取文中图片地址 
        /// </summary> 
        /// <param name="content">内容</param> 
        /// <returns>地址字符串</returns> 
        public static string getImageUrl(string content)
        {
            string _pic = null;
            MatchCollection mc = Regex.Matches(content, "<img.+?src=\"(?<url>.+?)\".+?>", RegexOptions.IgnoreCase);
            //foreach (Match m in mc) {
            //    if (m.Groups.Count > 0) {
            //        _pic = mc[0].Groups["url"].Value;
            //    }
            //}
            for (int i = 0; i < mc.Count; i++)
            {
                //Random r = new Random();
                //int j = r.Next(0, mc.Count);
                if (!string.IsNullOrEmpty(mc[i].Groups["url"].Value))
                {
                    _pic = mc[i].Groups["url"].Value;
                    break;
                }
            }
            return _pic;
        }
        #endregion

        #region 显示时间差
        public static string times(object times)
        {
            string str = null;
            TimeSpan _t = DateTime.Now - DateTime.Parse(times.ToString());
            if (_t.Seconds > 0 && _t.Seconds < 60)
            {
                str = _t.Seconds + " 秒前";
            }
            
            if (_t.Minutes > 0 && _t.Minutes < 60)
            {
                str = _t.Minutes + " 分钟前";
            }
            
            if (_t.Hours > 0 && _t.Hours <= 24)
            {
                str = _t.Hours + " 小时前";
            }
            
            if (_t.Days > 0)
            {
                str = _t.Days + " 天前";
            }
            
            if (_t.Days > 30)
            {
                str = DateTime.Parse(times.ToString()).ToString("yyyy年M月d日");
            }
            return str;
        }
        #endregion


        public static string SplitString(string body, string _splitString, int length)
        {
            //HttpContext myPage = HttpContext.Current;

            //System.Net.WebClient wc = new System.Net.WebClient();
            //System.IO.Stream stream = wc.OpenRead("http://www.look1080.com/news7984");
            //System.IO.StreamReader sr = new System.IO.StreamReader(stream);

            //body = sr.ReadToEnd();

            string[] array = null;
            string _return = "";
            body = MyFormatnoHtml(body);
            body = body.Replace("：", "");
            foreach (string _array in _splitString.Split(','))
            {
                if (!body.Contains(_array))
                {
                    continue;
                }
                array = body.Split(new string[] { _array }, StringSplitOptions.None);

                if (array.Length > 1)
                {
                    _return = array[1];
                    break;
                }
                else
                {
                    _return = array[0];
                    break;
                }

            }
            return _return.Length > length ? _return.Remove(length) : body;
        }
    }
}