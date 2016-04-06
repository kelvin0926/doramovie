using System;
using System.Collections.Generic;
using System.Web;
using System.Data.Common;
using System.Data;
using MySql.Data.MySqlClient;
using System.Configuration;
using System.Text;

namespace DoraMovie
{
    public class Paginator
    {
        private static string connstr = ConfigurationManager.ConnectionStrings["connection"].ConnectionString;

        /// <summary>
        /// 分页超链接字段导航
        /// </summary>
        /// <param name="_PageIndex">当前页</param>
        /// <param name="_PageCount">总页数</param>
        /// <returns>返回一个带超链接翻页地址的html</returns>
        public static string Pagination(int _PageIndex, int _PageCount, int _RecordCount)
        {
            string _url = HttpContext.Current.Request.Url.AbsolutePath;
            int next = 0, pre = 0, startpage = 0, endpage = 0;
            string s_page = "";
            if (_PageIndex < 1) { _PageIndex = 1; }
            if (_PageIndex > _PageCount) { _PageIndex = _PageCount; }
            next = _PageIndex + 1;
            pre = _PageIndex - 1;
            // 中间页起始序号
            startpage = (_PageIndex + 5) > _PageCount ? _PageCount - 9 : _PageIndex - 4;
            if (startpage < 1) { startpage = 1; }
            // 中间页终止序号
            endpage = _PageIndex < 5 ? 10 : _PageIndex + 5;
            if (endpage > _PageCount) { endpage = _PageCount; }
            s_page += "<div class=\"dataTables_info\" id=\"sample-table-2_info\" style='float:left; margin:5px 20px;'>共 " + _RecordCount + " 条记录 页数：" + _PageIndex + "/" + _PageCount + "页</div>";
            s_page += _PageIndex > 1 ? "<li><a href=\"" + _url + "?Page=1\">首页</a></li> <li><a href=\"" + _url + "?Page=" + pre + "\">上一页</a></li>" : "<li class='disabled'><a>首页</a> <a>上一页</a></li>";
            // 中间页循环显示页码
            for (int i = startpage; i <= endpage; i++)
            {
                s_page += _PageIndex == i ? "<li><a style='font-weight:bold;'>" + i + "</a></li>" : "<li><a href=\"" + _url + "?Page=" + i + "\">" + i + "</a></li>";
            }
            s_page += _PageIndex != _PageCount ? "<li><a href=\"" + _url + "?Page=" + next + "\">下一页</a></li> <li><a href=\"" + _url + "?Page=" + _PageCount + "\">末页</a></li>" : "<li class='disabled'><a>下一页</a> <a>末页</a></li>";
            return s_page;
        }


        /// <summary>
        /// 自动在当前路径后加Page参数的完整分页超链接字段导航
        /// </summary>
        /// <param name="_PageIndex">当前页</param>
        /// <param name="_PageCount">总页数</param>
        /// <returns>返回一个带超链接翻页地址的html</returns>
        public static string wzPagination(int _PageIndex, int _PageCount, int _RecordCount)
        {
            string _url = HttpContext.Current.Request.Url.AbsoluteUri;
            if (_url.Contains("&Page"))
            {
                _url = _url.Remove(_url.LastIndexOf("&Page"));
            }
            int next = 0, pre = 0, startpage = 0, endpage = 0;
            string s_page = "";
            if (_PageIndex < 1) { _PageIndex = 1; }
            if (_PageIndex > _PageCount) { _PageIndex = _PageCount; }
            next = _PageIndex + 1;
            pre = _PageIndex - 1;
            // 中间页起始序号
            startpage = (_PageIndex + 5) > _PageCount ? _PageCount - 9 : _PageIndex - 4;
            if (startpage < 1) { startpage = 1; }
            // 中间页终止序号
            endpage = _PageIndex < 5 ? 10 : _PageIndex + 5;
            if (endpage > _PageCount) { endpage = _PageCount; }
            s_page += "<div class=\"dataTables_info\" id=\"sample-table-2_info\" style='float:left; margin:5px 20px;'>共 " + _RecordCount + " 条记录 页数：" + _PageIndex + "/" + _PageCount + "页</div>";
            s_page += _PageIndex > 1 ? "<li><a href=\"" + _url + "&Page=1\">首页</a></li> <li><a href=\"" + _url + "&Page=" + pre + "\">上一页</a></li>" : "<li class='disabled'><a>首页</a> <a>上一页</a></li>";
            // 中间页循环显示页码
            for (int i = startpage; i <= endpage; i++)
            {
                s_page += _PageIndex == i ? "<li><a style='font-weight:bold;'>" + i + "</a></li>" : "<li><a href=\"" + _url + "&Page=" + i + "\">" + i + "</a></li>";
            }
            s_page += _PageIndex != _PageCount ? "<li><a href=\"" + _url + "&Page=" + next + "\">下一页</a></li> <li><a href=\"" + _url + "&Page=" + _PageCount + "\">末页</a></li>" : "<li class='disabled'><a>下一页</a> <a>末页</a></li>";
            return s_page;
        }
        /// <summary>
        /// 自动在当前路径后加Page参数的完整分页超链接字段导航
        /// </summary>
        /// <param name="_PageIndex">当前页</param>
        /// <param name="_PageCount">总页数</param>
        /// <returns>返回一个带超链接翻页地址的html</returns>
        public static string wzPagination_qiantai(int _PageIndex, int _PageCount, int _RecordCount)
        {
            string _url = HttpContext.Current.Request.Url.AbsoluteUri;
            if (_url.Contains("?"))
            {
                _url = _url.Remove(_url.LastIndexOf("?"));
            }
            int next = 0, pre = 0, startpage = 0, endpage = 0;
            string s_page = "";
            if (_PageIndex < 1) { _PageIndex = 1; }
            if (_PageIndex > _PageCount) { _PageIndex = _PageCount; }
            next = _PageIndex + 1;
            pre = _PageIndex - 1;
            // 中间页起始序号
            startpage = (_PageIndex + 5) > _PageCount ? _PageCount - 9 : _PageIndex - 4;
            if (startpage < 1) { startpage = 1; }
            // 中间页终止序号
            endpage = _PageIndex < 5 ? 10 : _PageIndex + 5;
            if (endpage > _PageCount) { endpage = _PageCount; }
            s_page += "<div class=\"dataTables_info\" id=\"sample-table-2_info\" style='float:left; margin:5px 20px;'>共 " + _RecordCount + " 条记录 页数：" + _PageIndex + "/" + _PageCount + "页</div>";
            s_page += _PageIndex > 1 ? "<li><a href=\"" + _url + "?Page=1\">首页</a></li> <li><a href=\"" + _url + "?Page=" + pre + "\">上页</a></li>" : "<li class='disabled'><a>首页</a></li> <li><a>上页</a></li>";
            // 中间页循环显示页码
            for (int i = startpage; i <= endpage; i++)
            {
                s_page += _PageIndex == i ? "<li><span class='page-numbers dots'>...</span></li>" : "<li><a href=\"" + _url + "?Page=" + i + "\">" + i + "</a></li>";
            }
            s_page += _PageIndex != _PageCount ? "<li><a href=\"" + _url + "?Page=" + next + "\">下页</a></li> <li><a href=\"" + _url + "?Page=" + _PageCount + "\">末页</a></li>" : "<li class='disabled'><a>下页</a></li> <li><a>末页</a></li>";
            return s_page;
        }

        /// <summary>
        /// 取得DataTable类型的分页集合
        /// </summary>
        /// <param name="sqlAllFields">需要查找的sql字段，如果是多表查询，请加上表名.字段名</param>
        /// <param name="sqlTable">查询的表名。</param>
        /// <param name="sqlWhere">查询的表如果包含查询条件，也将条件带上，但不要包含order by子句，也不要包含"from"关键字。</param>
        /// <param name="IndexField">用以分页的不能重复的索引字段名，最好是主表的自增长字段，如果是多表查询，请带上表名或别名，如a.id,b.title</param>
        /// <param name="sqlOrderField">排序条件字段</param>
        /// <param name="PageIndex">当前页的页码</param>
        /// <param name="PageSize">每页记录数</param>
        /// <param name="RecordCount">输出参数，总记录集</param>
        /// <param name="PageCount">输出参数，总页数</param>
        /// <returns>返回取得当前页面的数据集</returns>
        public static DataTable MyExecutePage(string sqlAllFields, string sqlTable, string sqlWhere, string IndexField, string sqlOrderField, int PageIndex, int PageSize, out int RecordCount, out int PageCount)
        {
            MySqlConnection conn = new MySqlConnection(connstr);
            string sqlpage = GetPageSQL(sqlAllFields, sqlTable, sqlWhere, IndexField, sqlOrderField, PageIndex, PageSize, out RecordCount, out PageCount);
            MySqlDataAdapter da = new MySqlDataAdapter(sqlpage, conn);
            DataSet ds = new DataSet();
            da.Fill(ds, "PageResult");
            da.Dispose();
            conn.Close();
            conn.Dispose();
            return ds.Tables["PageResult"];
        }

        /// <summary>
        /// 取得分页SQL语句
        /// </summary>
        /// <param name="conn">sqlConnection对象</param>
        /// /// <param name="cmd">sqlCommand对象</param>
        /// <param name="sqlAllFields">需要查找的sql字段，如果是多表查询，请加上表名.字段名</param>
        /// <param name="sqlTable">查询的表名。</param>
        /// <param name="sqlWhere">查询的表如果包含查询条件，也将条件带上，但不要包含order by子句，也不要包含"from"关键字。</param>
        /// <param name="IndexField">用以分页的不能重复的索引字段名，最好是主表的自增长字段，如果是多表查询，请带上表名或别名，如a.id,b.title</param>
        /// <param name="sqlOrderField">排序条件字段</param>
        /// <param name="PageIndex">当前页的页码</param>
        /// <param name="PageSize">每页记录数</param>
        /// <param name="RecordCount">输出参数，总记录集</param>
        /// <param name="PageCount">输出参数，总页数</param>
        /// <returns>返回取得当前页面的数据集</returns>
        protected static string GetPageSQL(string sqlAllFields, string sqlTable, string sqlWhere, string IndexField, string sqlOrderField, int PageIndex, int PageSize, out int RecordCount, out int PageCount)
        {
            MySqlConnection conn = new MySqlConnection(connstr);
            string _sqlcount = "select count(" + IndexField + ") from " + sqlTable + " where " + sqlWhere;
            MySqlCommand cmd = new MySqlCommand(_sqlcount, conn);
            conn.Open();
            object obj = cmd.ExecuteScalar();
            // 计算RecordCount
            int.TryParse(obj + "", out RecordCount);
            conn.Close();
            if (PageSize <= 0)
            {
                PageSize = 10;
            }
            // 计算PageCount
            if (RecordCount % PageSize == 0)
            {
                PageCount = RecordCount / PageSize;
            }
            else
            {
                PageCount = RecordCount / PageSize + 1;
            }
            if (PageIndex > PageCount) { PageIndex = PageCount; }
            if (PageIndex < 1) { PageIndex = 1; }
            string _SQL;
            //if (PageIndex == 1)
            //{
            //    _SQL = "select top " + PageSize + " " + sqlAllFields + " from " + sqlTable + " where " + sqlWhere + " order by " + sqlOrderField;
            //}
            //else
            //{
            //    _SQL = "select top " + PageSize + " " + sqlAllFields + " from " + sqlTable + " where " + sqlWhere + " ";
            //    _SQL += "and " + IndexField + " not in (select top " + (PageIndex - 1) * PageSize + " " + IndexField + " from " + sqlTable + " where " + sqlWhere + " order by " + sqlOrderField + ")";
            //    _SQL += " order by " + sqlOrderField;
            //}
            if (PageIndex == 1)
            {
                _SQL = "select " + sqlAllFields + " from " + sqlTable + " where " + sqlWhere + " order by " + sqlOrderField + " limit 0, " + PageSize;
            }
            else
            {
                _SQL = "select " + sqlAllFields + " from " + sqlTable + " where " + sqlWhere + " ";
                //_SQL += "where " + IndexField + " not in (select top " + (PageIndex - 1) * PageSize + " " + IndexField + " from " + sqlTable + " order by " + sqlOrderField + ")";
                _SQL += " order by " + sqlOrderField + " limit " + (PageIndex-1) * PageSize + "," + PageSize;
            }
            return _SQL;
        }

        /// <summary>
        /// 取得DataTable类型的分页集合（无查询条件）
        /// </summary>
        /// <param name="sqlAllFields">需要查找的sql字段，如果是多表查询，请加上表名.字段名</param>
        /// <param name="sqlTable">查询的表名。</param>
        /// <param name="IndexField">用以分页的不能重复的索引字段名，最好是主表的自增长字段，如果是多表查询，请带上表名或别名，如a.id,b.title</param>
        /// <param name="sqlOrderField">排序条件字段</param>
        /// <param name="PageIndex">当前页的页码</param>
        /// <param name="PageSize">每页记录数</param>
        /// <param name="RecordCount">输出参数，总记录集</param>
        /// <param name="PageCount">输出参数，总页数</param>
        /// <returns>返回取得当前页面的数据集</returns>
        public static DataTable MyExecutePage(string sqlAllFields, string sqlTable, string IndexField, string sqlOrderField, int PageIndex, int PageSize, out int RecordCount, out int PageCount)
        {
            MySqlConnection conn = new MySqlConnection(connstr);
            string sqlpage = GetPageSQL(sqlAllFields, sqlTable, IndexField, sqlOrderField, PageIndex, PageSize, out RecordCount, out PageCount);
            MySqlDataAdapter da = new MySqlDataAdapter(sqlpage, conn);
            DataSet ds = new DataSet();
            da.Fill(ds, "PageResult");
            conn.Close();
            conn.Dispose();
            da.Dispose();
            return ds.Tables["PageResult"];
        }

        /// <summary>
        /// 取得分页SQL语句（无条件查询）
        /// </summary>
        /// <param name="conn">sqlConnection对象</param>
        /// /// <param name="cmd">sqlCommand对象</param>
        /// <param name="sqlAllFields">需要查找的sql字段，如果是多表查询，请加上表名.字段名</param>
        /// <param name="sqlTable">查询的表名。</param>
        /// <param name="IndexField">用以分页的不能重复的索引字段名，最好是主表的自增长字段，如果是多表查询，请带上表名或别名，如a.id,b.title</param>
        /// <param name="sqlOrderField">排序条件字段</param>
        /// <param name="PageIndex">当前页的页码</param>
        /// <param name="PageSize">每页记录数</param>
        /// <param name="RecordCount">输出参数，总记录集</param>
        /// <param name="PageCount">输出参数，总页数</param>
        /// <returns>返回取得当前页面的数据集</returns>
        protected static string GetPageSQL(string sqlAllFields, string sqlTable, string IndexField, string sqlOrderField, int PageIndex, int PageSize, out int RecordCount, out int PageCount)
        {
            MySqlConnection conn = new MySqlConnection(connstr);
            string _sqlcount = "select count(" + IndexField + ") from " + sqlTable + "";
            MySqlCommand cmd = new MySqlCommand(_sqlcount, conn);
            conn.Open();
            // 计算RecordCount
            object scalar = cmd.ExecuteScalar();
            int.TryParse(scalar + "", out RecordCount);
            conn.Close();
            if (PageSize <= 0)
            {
                PageSize = 10;
            }
            // 计算PageCount
            if (RecordCount % PageSize == 0)
            {
                PageCount = RecordCount / PageSize;
            }
            else
            {
                PageCount = RecordCount / PageSize + 1;
            }
            if (PageIndex > PageCount) { PageIndex = PageCount; }
            if (PageIndex < 1) { PageIndex = 1; }
            string _SQL;
            if (PageIndex == 1)
            {
                _SQL = "select " + sqlAllFields + " from " + sqlTable + " order by " + sqlOrderField + " limit 0, " + PageSize;
            }
            else
            {
                _SQL = "select " + sqlAllFields + " from " + sqlTable + " ";
                //_SQL += "where " + IndexField + " not in (select top " + (PageIndex - 1) * PageSize + " " + IndexField + " from " + sqlTable + " order by " + sqlOrderField + ")";
                _SQL += " order by " + sqlOrderField + " limit " + (PageIndex - 1) * PageSize + "," + PageSize;
            }
            return _SQL;
        }
    }
}
