using System;
using System.Data;
using System.Text;
using MySql.Data.MySqlClient;
namespace DoraMovie.Model {
    /// <summary>
    /// 类adminManage。
    /// </summary>
    [Serializable]
    public partial class adminManage {
        public adminManage() { }
        #region Model
        private int _id;
        private string _name;
        private string _pwd;
        private DateTime? _addtime;
        private string _Email;
        private int? _ispast;
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
        public string name {
            set { _name = value; }
            get { return _name; }
        }
        /// <summary>
        /// 
        /// </summary>
        public string pwd {
            set { _pwd = value; }
            get { return _pwd; }
        }
        /// <summary>
        /// 
        /// </summary>
        public DateTime? addtime {
            set { _addtime = value; }
            get { return _addtime; }
        }
        /// <summary>
        /// 
        /// </summary>
        public string Email {
            set { _Email = value; }
            get { return _Email; }
        }
        /// <summary>
        /// 
        /// </summary>
        public int? isPast {
            set { _ispast = value; }
            get { return _ispast; }
        }
        #endregion Model


        #region  Method

        /// <summary>
        /// 得到一个对象实体
        /// </summary>
        public adminManage(string name) {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("select id,name,pwd,addtime,Email,isPast ");
            strSql.Append(" FROM adminManage ");
            strSql.Append(" where name=@name ");
            MySqlParameter[] parameters = {
					new MySqlParameter("@name", MySqlDbType.VarChar,20)};
            parameters[0].Value = name;

            DataSet ds = DataBase.DbHelper.ExecuteTable(CommandType.Text, strSql.ToString(), parameters).DataSet;
            if (ds.Tables[0].Rows.Count > 0) {
                if (ds.Tables[0].Rows[0]["id"] != null && ds.Tables[0].Rows[0]["id"].ToString() != "") {
                    this.id = int.Parse(ds.Tables[0].Rows[0]["id"].ToString());
                }
                if (ds.Tables[0].Rows[0]["name"] != null) {
                    this.name = ds.Tables[0].Rows[0]["name"].ToString();
                }
                if (ds.Tables[0].Rows[0]["pwd"] != null) {
                    this.pwd = ds.Tables[0].Rows[0]["pwd"].ToString();
                }
                if (ds.Tables[0].Rows[0]["addtime"] != null && ds.Tables[0].Rows[0]["addtime"].ToString() != "") {
                    this.addtime = DateTime.Parse(ds.Tables[0].Rows[0]["addtime"].ToString());
                }
                if (ds.Tables[0].Rows[0]["Email"] != null && ds.Tables[0].Rows[0]["Email"].ToString() != "") {
                    this.Email = ds.Tables[0].Rows[0]["Email"].ToString();
                }
                if (ds.Tables[0].Rows[0]["isPast"] != null && ds.Tables[0].Rows[0]["isPast"].ToString() != "") {
                    this.isPast = int.Parse(ds.Tables[0].Rows[0]["isPast"].ToString());
                }
            }
        }
        /// <summary>
        /// 是否存在该记录
        /// </summary>
        public bool Exists(int id) {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("select count(1) from adminManage");
            strSql.Append(" where id=@id ");

            MySqlParameter[] parameters = {
					new MySqlParameter("@id", MySqlDbType.Int32,4)};
            parameters[0].Value = id;

            return (bool)DataBase.DbHelper.ExecuteScalar(CommandType.Text, strSql.ToString(), parameters);
        }


        /// <summary>
        /// 增加一条数据
        /// </summary>
        public int Add() {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("insert into adminManage (");
            strSql.Append("name,pwd,addtime,Email,isPast)");
            strSql.Append(" values (");
            strSql.Append("@name,@pwd,@addtime,@Email,@isPast)");
            strSql.Append(";select @@IDENTITY");
            MySqlParameter[] parameters = {
					new MySqlParameter("@name", MySqlDbType.VarChar,20),
					new MySqlParameter("@pwd", MySqlDbType.VarChar,50),
					new MySqlParameter("@addtime", MySqlDbType.DateTime),
					new MySqlParameter("@Email", MySqlDbType.VarChar,50),
					new MySqlParameter("@isPast", MySqlDbType.Int32,4)};
            parameters[0].Value = name;
            parameters[1].Value = pwd;
            parameters[2].Value = addtime;
            parameters[3].Value = Email;
            parameters[4].Value = isPast;

            object obj = DataBase.DbHelper.ExecuteNonQuery(CommandType.Text, strSql.ToString(), parameters);
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
            strSql.Append("update adminManage set ");
            strSql.Append("name=@name,");
            strSql.Append("pwd=@pwd,");
            strSql.Append("addtime=@addtime,");
            strSql.Append("Email=@Email,");
            strSql.Append("isPast=@isPast");
            strSql.Append(" where id=@id ");
            MySqlParameter[] parameters = {
					new MySqlParameter("@name", MySqlDbType.VarChar,20),
					new MySqlParameter("@pwd", MySqlDbType.VarChar,50),
					new MySqlParameter("@addtime", MySqlDbType.DateTime),
					new MySqlParameter("@Email", MySqlDbType.VarChar,50),
					new MySqlParameter("@isPast", MySqlDbType.Int32,4),
					new MySqlParameter("@id", MySqlDbType.Int32,4)};
            parameters[0].Value = name;
            parameters[1].Value = pwd;
            parameters[2].Value = addtime;
            parameters[3].Value = Email;
            parameters[4].Value = isPast;
            parameters[5].Value = id;

            int rows = DataBase.DbHelper.ExecuteNonQuery(CommandType.Text, strSql.ToString(), parameters);
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
            strSql.Append("delete from adminManage ");
            strSql.Append(" where id=@id ");
            MySqlParameter[] parameters = {
					new MySqlParameter("@id", MySqlDbType.Int32,4)};
            parameters[0].Value = id;

            int rows = DataBase.DbHelper.ExecuteNonQuery(CommandType.Text, strSql.ToString(), parameters);
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
            strSql.Append("select id,name,pwd,addtime,Email,isPast ");
            strSql.Append(" FROM adminManage ");
            strSql.Append(" where id=@id ");
            MySqlParameter[] parameters = {
					new MySqlParameter("@id", MySqlDbType.Int32,4)};
            parameters[0].Value = id;

            DataSet ds = DataBase.DbHelper.ExecuteTable(CommandType.Text, strSql.ToString(), parameters).DataSet;
            if (ds.Tables[0].Rows.Count > 0) {
                if (ds.Tables[0].Rows[0]["id"] != null && ds.Tables[0].Rows[0]["id"].ToString() != "") {
                    this.id = int.Parse(ds.Tables[0].Rows[0]["id"].ToString());
                }
                if (ds.Tables[0].Rows[0]["name"] != null) {
                    this.name = ds.Tables[0].Rows[0]["name"].ToString();
                }
                if (ds.Tables[0].Rows[0]["pwd"] != null) {
                    this.pwd = ds.Tables[0].Rows[0]["pwd"].ToString();
                }
                if (ds.Tables[0].Rows[0]["addtime"] != null && ds.Tables[0].Rows[0]["addtime"].ToString() != "") {
                    this.addtime = DateTime.Parse(ds.Tables[0].Rows[0]["addtime"].ToString());
                }
                if (ds.Tables[0].Rows[0]["Email"] != null && ds.Tables[0].Rows[0]["Email"].ToString() != "") {
                    this.Email = ds.Tables[0].Rows[0]["Email"].ToString();
                }
                if (ds.Tables[0].Rows[0]["isPast"] != null && ds.Tables[0].Rows[0]["isPast"].ToString() != "") {
                    this.isPast = int.Parse(ds.Tables[0].Rows[0]["isPast"].ToString());
                }
            }
        }

        /// <summary>
        /// 获得数据列表
        /// </summary>
        public DataSet GetList(string strWhere) {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("select * ");
            strSql.Append(" FROM adminManage ");
            if (strWhere.Trim() != "") {
                strSql.Append(" where " + strWhere);
            }
            return DataBase.DbHelper.ExecuteTable(CommandType.Text, (strSql.ToString())).DataSet;
        }

        #endregion  Method
    }
}