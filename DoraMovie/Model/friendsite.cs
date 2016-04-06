using System;
using System.Data;
using System.Text;
using MySql.Data.MySqlClient;
using DataBase;
namespace DoraMovie.Model {
    /// <summary>
    /// 类friendsite。
    /// </summary>
    [Serializable]
    public partial class friendsite {
        public friendsite() { }
        #region Model
        private int _id;
        private string _title;
        private string _url;
        private string _qq;
        private int? _ispast;
        private DateTime? _addtime;
        /// <summary>
        /// 
        /// </summary>
        public int id {
            set { _id = value; }
            get { return _id; }
        }
        /// <summary>
        /// 
        /// </summary>
        public string title {
            set { _title = value; }
            get { return _title; }
        }
        /// <summary>
        /// 
        /// </summary>
        public string url {
            set { _url = value; }
            get { return _url; }
        }
        /// <summary>
        /// 
        /// </summary>
        public string qq {
            set { _qq = value; }
            get { return _qq; }
        }
        /// <summary>
        /// 
        /// </summary>
        public int? isPast {
            set { _ispast = value; }
            get { return _ispast; }
        }
        /// <summary>
        /// 
        /// </summary>
        public DateTime? addtime {
            set { _addtime = value; }
            get { return _addtime; }
        }
        #endregion Model


        #region  Method

        /// <summary>
        /// 得到一个对象实体
        /// </summary>
        public friendsite(int id) {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("select id,title,url,qq,isPast,addtime ");
            strSql.Append(" FROM friendsite ");
            strSql.Append(" where id=@id ");
            MySqlParameter[] parameters = {
					new MySqlParameter("@id", MySqlDbType.Int32,4)};
            parameters[0].Value = id;

            DataSet ds = DbHelper.ExecuteTable(CommandType.Text, strSql.ToString(), parameters).DataSet;
            if (ds.Tables[0].Rows.Count > 0) {
                if (ds.Tables[0].Rows[0]["id"] != null && ds.Tables[0].Rows[0]["id"].ToString() != "") {
                    this.id = int.Parse(ds.Tables[0].Rows[0]["id"].ToString());
                }
                if (ds.Tables[0].Rows[0]["title"] != null) {
                    this.title = ds.Tables[0].Rows[0]["title"].ToString();
                }
                if (ds.Tables[0].Rows[0]["url"] != null) {
                    this.url = ds.Tables[0].Rows[0]["url"].ToString();
                }
                if (ds.Tables[0].Rows[0]["qq"] != null && ds.Tables[0].Rows[0]["qq"].ToString() != "") {
                    this.qq = ds.Tables[0].Rows[0]["qq"].ToString();
                }
                if (ds.Tables[0].Rows[0]["isPast"] != null && ds.Tables[0].Rows[0]["isPast"].ToString() != "") {
                    this.isPast = int.Parse(ds.Tables[0].Rows[0]["isPast"].ToString());
                }
                if (ds.Tables[0].Rows[0]["addtime"] != null && ds.Tables[0].Rows[0]["addtime"].ToString() != "") {
                    this.addtime = DateTime.Parse(ds.Tables[0].Rows[0]["addtime"].ToString());
                }
            }
        }
        /// <summary>
        /// 是否存在该记录
        /// </summary>
        public bool Exists(int id) {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("select count(1) from friendsite");
            strSql.Append(" where id=@id ");

            MySqlParameter[] parameters = {
					new MySqlParameter("@id", MySqlDbType.Int32,4)};
            parameters[0].Value = id;

            return (bool)DbHelper.ExecuteScalar(CommandType.Text,strSql.ToString(), parameters);
        }


        /// <summary>
        /// 增加一条数据
        /// </summary>
        public int Add() {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("insert into friendsite (");
            strSql.Append("title,url,qq,isPast,addtime)");
            strSql.Append(" values (");
            strSql.Append("@title,@url,@qq,@isPast,@addtime)");
            strSql.Append(";select @@IDENTITY");
            MySqlParameter[] parameters = {
					new MySqlParameter("@title", MySqlDbType.VarChar,10),
					new MySqlParameter("@url", MySqlDbType.VarChar,200),
					new MySqlParameter("@qq", MySqlDbType.VarChar,20),
					new MySqlParameter("@isPast", MySqlDbType.Int32,4),
					new MySqlParameter("@addtime", MySqlDbType.DateTime)};
            parameters[0].Value = title;
            parameters[1].Value = url;
            parameters[2].Value = qq;
            parameters[3].Value = isPast;
            parameters[4].Value = addtime;

            object obj = DbHelper.ExecuteNonQuery(CommandType.Text,strSql.ToString(), parameters);
            if (obj == null) {
                return 0;
            } else {
                return Convert.ToInt32(obj);
            }
        }
        /// <summary>
        /// 更新一条数据
        /// </summary>
        public bool Update() {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("update friendsite set ");
            strSql.Append("title=@title,");
            strSql.Append("url=@url,");
            strSql.Append("qq=@qq,");
            strSql.Append("isPast=@isPast,");
            strSql.Append("addtime=@addtime");
            strSql.Append(" where id=@id ");
            MySqlParameter[] parameters = {
					new MySqlParameter("@title", MySqlDbType.VarChar,10),
					new MySqlParameter("@url", MySqlDbType.VarChar,200),
					new MySqlParameter("@qq", MySqlDbType.VarChar,20),
					new MySqlParameter("@isPast", MySqlDbType.Int32,4),
					new MySqlParameter("@addtime", MySqlDbType.DateTime),
					new MySqlParameter("@id", MySqlDbType.Int32,4)};
            parameters[0].Value = title;
            parameters[1].Value = url;
            parameters[2].Value = qq;
            parameters[3].Value = isPast;
            parameters[4].Value = addtime;
            parameters[5].Value = id;

            int rows = DbHelper.ExecuteNonQuery(CommandType.Text,strSql.ToString(), parameters);
            if (rows > 0) {
                return true;
            } else {
                return false;
            }
        }

        /// <summary>
        /// 删除一条数据
        /// </summary>
        public bool Delete(int id) {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("delete from friendsite ");
            strSql.Append(" where id=@id ");
            MySqlParameter[] parameters = {
					new MySqlParameter("@id", MySqlDbType.Int32,4)};
            parameters[0].Value = id;

            int rows = DbHelper.ExecuteNonQuery(CommandType.Text,strSql.ToString(), parameters);
            if (rows > 0) {
                return true;
            } else {
                return false;
            }
        }


        /// <summary>
        /// 得到一个对象实体
        /// </summary>
        public void GetModel(int id) {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("select id,title,url,qq,isPast,addtime ");
            strSql.Append(" FROM friendsite ");
            strSql.Append(" where id=@id ");
            MySqlParameter[] parameters = {
					new MySqlParameter("@id", MySqlDbType.Int32,4)};
            parameters[0].Value = id;

            DataSet ds = DbHelper.ExecuteTable(CommandType.Text,strSql.ToString(), parameters).DataSet;
            if (ds.Tables[0].Rows.Count > 0) {
                if (ds.Tables[0].Rows[0]["id"] != null && ds.Tables[0].Rows[0]["id"].ToString() != "") {
                    this.id = int.Parse(ds.Tables[0].Rows[0]["id"].ToString());
                }
                if (ds.Tables[0].Rows[0]["title"] != null) {
                    this.title = ds.Tables[0].Rows[0]["title"].ToString();
                }
                if (ds.Tables[0].Rows[0]["url"] != null) {
                    this.url = ds.Tables[0].Rows[0]["url"].ToString();
                }
                if (ds.Tables[0].Rows[0]["qq"] != null && ds.Tables[0].Rows[0]["qq"].ToString() != "") {
                    this.qq = ds.Tables[0].Rows[0]["qq"].ToString();
                }
                if (ds.Tables[0].Rows[0]["isPast"] != null && ds.Tables[0].Rows[0]["isPast"].ToString() != "") {
                    this.isPast = int.Parse(ds.Tables[0].Rows[0]["isPast"].ToString());
                }
                if (ds.Tables[0].Rows[0]["addtime"] != null && ds.Tables[0].Rows[0]["addtime"].ToString() != "") {
                    this.addtime = DateTime.Parse(ds.Tables[0].Rows[0]["addtime"].ToString());
                }
            }
        }

        /// <summary>
        /// 获得数据列表
        /// </summary>
        public DataSet GetList(string strWhere) {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("select * ");
            strSql.Append(" FROM friendsite ");
            if (strWhere.Trim() != "") {
                strSql.Append(" where " + strWhere);
            }
            return DbHelper.ExecuteTable(CommandType.Text,strSql.ToString()).DataSet;
        }

        #endregion  Method
    }
}