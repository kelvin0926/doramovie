using System;
using System.Data;
using System.Text;
using MySql.Data.MySqlClient;
namespace DoraMovie.Model {
    /// <summary>
    /// 类about。
    /// </summary>
    [Serializable]
    public partial class about {
        #region Model
        private int _id;
        private string _aboutme;
        private string _contact;
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
        public string aboutMe {
            set { _aboutme = value; }
            get { return _aboutme; }
        }
        /// <summary>
        /// 
        /// </summary>
        public string contact {
            set { _contact = value; }
            get { return _contact; }
        }
        #endregion Model


        #region  Method

        /// <summary>
        /// 得到一个对象实体
        /// </summary>
        public about() {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("select id,aboutMe,contact ");
            strSql.Append(" FROM about ");
            DataSet ds = DataBase.DbHelper.ExecuteTable(CommandType.Text, strSql.ToString()).DataSet;
            if (ds.Tables[0].Rows.Count > 0) {
                if (ds.Tables[0].Rows[0]["id"] != null && ds.Tables[0].Rows[0]["id"].ToString() != "") {
                    this.id = int.Parse(ds.Tables[0].Rows[0]["id"].ToString());
                }
                if (ds.Tables[0].Rows[0]["aboutMe"] != null) {
                    this.aboutMe = ds.Tables[0].Rows[0]["aboutMe"].ToString();
                }
                if (ds.Tables[0].Rows[0]["contact"] != null) {
                    this.contact = ds.Tables[0].Rows[0]["contact"].ToString();
                }
            }
        }
        /// <summary>
        /// 是否存在该记录
        /// </summary>
        public int Exists() {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("select count(1) from about");

            return (int)DataBase.DbHelper.ExecuteScalar(CommandType.Text, strSql.ToString());
        }


        /// <summary>
        /// 增加一条数据
        /// </summary>
        public int Add() {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("insert into about (");
            strSql.Append("aboutMe,contact)");
            strSql.Append(" values (");
            strSql.Append("@aboutMe,@contact)");
            strSql.Append(";select @@IDENTITY");
            MySqlParameter[] parameters = {
					new MySqlParameter("@aboutMe", MySqlDbType.Text),
					new MySqlParameter("@contact", MySqlDbType.Text)};
            parameters[0].Value = aboutMe;
            parameters[1].Value = contact;

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
            strSql.Append("update about set ");
            strSql.Append("aboutMe=@aboutMe,");
            strSql.Append("contact=@contact");
            MySqlParameter[] parameters = {
					new MySqlParameter("@aboutMe", MySqlDbType.Text),
					new MySqlParameter("@contact", MySqlDbType.Text)};
            parameters[0].Value = aboutMe;
            parameters[1].Value = contact;

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
            strSql.Append("select id,aboutMe,contact ");
            strSql.Append(" FROM about ");

            DataSet ds = DataBase.DbHelper.ExecuteTable(CommandType.Text, strSql.ToString()).DataSet;
            if (ds.Tables[0].Rows.Count > 0) {
                if (ds.Tables[0].Rows[0]["id"] != null && ds.Tables[0].Rows[0]["id"].ToString() != "") {
                    this.id = int.Parse(ds.Tables[0].Rows[0]["id"].ToString());
                }
                if (ds.Tables[0].Rows[0]["aboutMe"] != null) {
                    this.aboutMe = ds.Tables[0].Rows[0]["aboutMe"].ToString();
                }
                if (ds.Tables[0].Rows[0]["contact"] != null) {
                    this.contact = ds.Tables[0].Rows[0]["contact"].ToString();
                }
            }
        }

        /// <summary>
        /// 获得数据列表
        /// </summary>
        public DataSet GetList(string strWhere) {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("select * ");
            strSql.Append(" FROM about ");
            if (strWhere.Trim() != "") {
                strSql.Append(" where " + strWhere);
            }
            return DataBase.DbHelper.ExecuteTable(CommandType.Text, strSql.ToString()).DataSet;
        }

        #endregion  Method
    }
}

