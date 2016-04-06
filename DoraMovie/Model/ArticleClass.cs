using System;
using System.Data;
using System.Text;
using MySql.Data.MySqlClient;
namespace DoraMovie.Model {
    /// <summary>
    /// 类articleClass。
    /// </summary>
    [Serializable]
    public partial class ArticleClass {
        public ArticleClass() { }
        #region Model
        private int _id;
        private int? _cid;
        private string _name;
        private int? _paixu;
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
        public int? cid {
            set { _cid = value; }
            get { return _cid; }
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
        public int? paixu {
            set { _paixu = value; }
            get { return _paixu; }
        }
        #endregion Model


        #region  Method

        /// <summary>
        /// 得到一个对象实体
        /// </summary>
        public ArticleClass(int id) {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("select id,cid,name,paixu ");
            strSql.Append(" FROM articleClass ");
            strSql.Append(" where id=@id ");
            MySqlParameter[] parameters = {
					new MySqlParameter("@id", MySqlDbType.Int32,4)};
            parameters[0].Value = id;

            DataSet ds = DataBase.DbHelper.ExecuteTable(CommandType.Text, strSql.ToString(), parameters).DataSet;
            if (ds.Tables[0].Rows.Count > 0) {
                if (ds.Tables[0].Rows[0]["id"] != null && ds.Tables[0].Rows[0]["id"].ToString() != "") {
                    this.id = int.Parse(ds.Tables[0].Rows[0]["id"].ToString());
                }
                if (ds.Tables[0].Rows[0]["cid"] != null && ds.Tables[0].Rows[0]["cid"].ToString() != "") {
                    this.cid = int.Parse(ds.Tables[0].Rows[0]["cid"].ToString());
                }
                if (ds.Tables[0].Rows[0]["name"] != null) {
                    this.name = ds.Tables[0].Rows[0]["name"].ToString();
                }
                if (ds.Tables[0].Rows[0]["paixu"] != null) {
                    this.paixu = int.Parse(ds.Tables[0].Rows[0]["paixu"].ToString());
                }
            }
        }
        /// <summary>
        /// 是否存在该记录
        /// </summary>
        public bool Exists() {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("select count(1) from articleClass");
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
            strSql.Append("insert into articleClass (");
            strSql.Append("cid,name,paixu)");
            strSql.Append(" values (");
            strSql.Append("@cid,@name,@paixu)");
            strSql.Append(";select @@IDENTITY");
            MySqlParameter[] parameters = {
					new MySqlParameter("@cid", MySqlDbType.Int32,4),
					new MySqlParameter("@name", MySqlDbType.VarChar,50),
					new MySqlParameter("@paixu", MySqlDbType.VarChar,10)};
            parameters[0].Value = cid;
            parameters[1].Value = name;
            parameters[2].Value = paixu;

            object obj = DataBase.DbHelper.ExecuteScalar(CommandType.Text,strSql.ToString(), parameters);
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
            strSql.Append("update articleClass set ");
            strSql.Append("name=@name,");
            strSql.Append("paixu=@paixu");
            strSql.Append(" where id=@id ");
            MySqlParameter[] parameters = {
					new MySqlParameter("@name",MySqlDbType.VarChar,50),
					new MySqlParameter("@paixu", MySqlDbType.VarChar,10),
					new MySqlParameter("@id", MySqlDbType.Int32,4)};
            parameters[0].Value = name;
            parameters[1].Value = paixu;
            parameters[2].Value = id;

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
            strSql.Append("delete from articleClass ");
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
            strSql.Append("select id,cid,name,paixu ");
            strSql.Append(" FROM articleClass ");
            strSql.Append(" where id=@id ");
            MySqlParameter[] parameters = {
					new MySqlParameter("@id", MySqlDbType.Int32,4)};
            parameters[0].Value = id;

            DataSet ds = DataBase.DbHelper.ExecuteTable(CommandType.Text, strSql.ToString(), parameters).DataSet;
            if (ds.Tables[0].Rows.Count > 0) {
                if (ds.Tables[0].Rows[0]["id"] != null && ds.Tables[0].Rows[0]["id"].ToString() != "") {
                    this.id = int.Parse(ds.Tables[0].Rows[0]["id"].ToString());
                }
                if (ds.Tables[0].Rows[0]["cid"] != null && ds.Tables[0].Rows[0]["cid"].ToString() != "") {
                    this.cid = int.Parse(ds.Tables[0].Rows[0]["cid"].ToString());
                }
                if (ds.Tables[0].Rows[0]["name"] != null) {
                    this.name = ds.Tables[0].Rows[0]["name"].ToString();
                }
                if (ds.Tables[0].Rows[0]["paixu"] != null) {
                    this.paixu = int.Parse(ds.Tables[0].Rows[0]["paixu"].ToString());
                }
            }
        }

        /// <summary>
        /// 获得数据列表
        /// </summary>
        public DataSet GetList(string strWhere) {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("select * ");
            strSql.Append(" FROM articleClass ");
            if (strWhere.Trim() != "") {
                strSql.Append(" where " + strWhere);
            }
            return DataBase.DbHelper.ExecuteTable(CommandType.Text, strSql.ToString()).DataSet;
        }

        #endregion  Method
    }
}

