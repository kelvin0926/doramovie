using System;
using System.Data;
using System.Text;
using MySql.Data.MySqlClient;
namespace DoraMovie.Model {
    /// <summary>
    /// 类user。
    /// </summary>
    [Serializable]
    public partial class user {
        public user() { }
        #region Model
        private int _id;
        private string _email;
        private string _pwd;
        private string _username;
        private string _cnname;
        private string _headpic;
        private string _sex;
        private decimal? _qq;
        private string _mobile;
        private string _age;
        private string _address;
        private string _website;
        private string _jianjie;
        private DateTime? _regtime;
        private DateTime? _onlinetime;
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
        public string email {
            set { _email = value; }
            get { return _email; }
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
        public string UserName {
            set { _username = value; }
            get { return _username; }
        }
        /// <summary>
        /// 
        /// </summary>
        public string CnName {
            set { _cnname = value; }
            get { return _cnname; }
        }
        /// <summary>
        /// 
        /// </summary>
        public string headPic {
            set { _headpic = value; }
            get { return _headpic; }
        }
        /// <summary>
        /// 
        /// </summary>
        public string sex {
            set { _sex = value; }
            get { return _sex; }
        }
        /// <summary>
        /// 
        /// </summary>
        public decimal? QQ {
            set { _qq = value; }
            get { return _qq; }
        }
        /// <summary>
        /// 
        /// </summary>
        public string Mobile {
            set { _mobile = value; }
            get { return _mobile; }
        }
        /// <summary>
        /// 
        /// </summary>
        public string Age {
            set { _age = value; }
            get { return _age; }
        }
        /// <summary>
        /// 
        /// </summary>
        public string address {
            set { _address = value; }
            get { return _address; }
        }
        /// <summary>
        /// 
        /// </summary>
        public string website {
            set { _website = value; }
            get { return _website; }
        }
        /// <summary>
        /// 
        /// </summary>
        public string jianjie {
            set { _jianjie = value; }
            get { return _jianjie; }
        }
        /// <summary>
        /// 
        /// </summary>
        public DateTime? regtime {
            set { _regtime = value; }
            get { return _regtime; }
        }
        /// <summary>
        /// 
        /// </summary>
        public DateTime? onlinetime {
            set { _onlinetime = value; }
            get { return _onlinetime; }
        }
        #endregion Model


        #region  Method

        /// <summary>
        /// 得到一个对象实体
        /// </summary>
        public user(string email) {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("select id,email,pwd,UserName,CnName,headPic,sex,QQ,Mobile,Age,address,website,jianjie,regtime,onlinetime ");
            strSql.Append(" FROM user ");
            strSql.Append(" where email=@email ");
            MySqlParameter[] parameters = {
					new MySqlParameter("@email", MySqlDbType.VarChar,-1)};
            parameters[0].Value = email;

            DataSet ds = DataBase.DbHelper.ExecuteTable(CommandType.Text, strSql.ToString(), parameters).DataSet;
            if (ds.Tables[0].Rows.Count > 0) {
                if (ds.Tables[0].Rows[0]["id"] != null && ds.Tables[0].Rows[0]["id"].ToString() != "") {
                    this.id = int.Parse(ds.Tables[0].Rows[0]["id"].ToString());
                }
                if (ds.Tables[0].Rows[0]["email"] != null) {
                    this.email = ds.Tables[0].Rows[0]["email"].ToString();
                }
                if (ds.Tables[0].Rows[0]["pwd"] != null) {
                    this.pwd = ds.Tables[0].Rows[0]["pwd"].ToString();
                }
                if (ds.Tables[0].Rows[0]["UserName"] != null) {
                    this.UserName = ds.Tables[0].Rows[0]["UserName"].ToString();
                }
                if (ds.Tables[0].Rows[0]["CnName"] != null) {
                    this.CnName = ds.Tables[0].Rows[0]["CnName"].ToString();
                }
                if (ds.Tables[0].Rows[0]["headPic"] != null) {
                    this.headPic = ds.Tables[0].Rows[0]["headPic"].ToString();
                }
                if (ds.Tables[0].Rows[0]["sex"] != null) {
                    this.sex = ds.Tables[0].Rows[0]["sex"].ToString();
                }
                if (ds.Tables[0].Rows[0]["QQ"] != null && ds.Tables[0].Rows[0]["QQ"].ToString() != "") {
                    this.QQ = decimal.Parse(ds.Tables[0].Rows[0]["QQ"].ToString());
                }
                if (ds.Tables[0].Rows[0]["Mobile"] != null) {
                    this.Mobile = ds.Tables[0].Rows[0]["Mobile"].ToString();
                }
                if (ds.Tables[0].Rows[0]["Age"] != null) {
                    this.Age = ds.Tables[0].Rows[0]["Age"].ToString();
                }
                if (ds.Tables[0].Rows[0]["address"] != null) {
                    this.address = ds.Tables[0].Rows[0]["address"].ToString();
                }
                if (ds.Tables[0].Rows[0]["website"] != null) {
                    this.website = ds.Tables[0].Rows[0]["website"].ToString();
                }
                if (ds.Tables[0].Rows[0]["jianjie"] != null) {
                    this.jianjie = ds.Tables[0].Rows[0]["jianjie"].ToString();
                }
                if (ds.Tables[0].Rows[0]["regtime"] != null && ds.Tables[0].Rows[0]["regtime"].ToString() != "") {
                    this.regtime = DateTime.Parse(ds.Tables[0].Rows[0]["regtime"].ToString());
                }
                if (ds.Tables[0].Rows[0]["onlinetime"] != null && ds.Tables[0].Rows[0]["onlinetime"].ToString() != "") {
                    this.onlinetime = DateTime.Parse(ds.Tables[0].Rows[0]["onlinetime"].ToString());
                }
            }
        }
        /// <summary>
        /// 是否存在该记录
        /// </summary>
        public bool Exists(string email) {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("select count(1) from user");
            strSql.Append(" where email=@email ");
            MySqlParameter[] parameters = {
					new MySqlParameter("@email", MySqlDbType.VarChar,-1)};
            parameters[0].Value = email;

            return (bool)DataBase.DbHelper.ExecuteScalar(CommandType.Text, strSql.ToString(), parameters);
        }


        /// <summary>
        /// 增加一条数据
        /// </summary>
        public int Add() {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("insert into user (");
            strSql.Append("email,pwd,UserName,CnName,headPic,sex,QQ,Mobile,Age,address,website,jianjie,regtime,onlinetime)");
            strSql.Append(" values (");
            strSql.Append("@email,@pwd,@UserName,@CnName,@headPic,@sex,@QQ,@Mobile,@Age,@address,@website,@jianjie,@regtime,@onlinetime)");
            strSql.Append(";select @@IDENTITY");
            MySqlParameter[] parameters = {
					new MySqlParameter("@email", MySqlDbType.VarChar,100),
					new MySqlParameter("@pwd", MySqlDbType.VarChar,50),
					new MySqlParameter("@UserName", MySqlDbType.VarChar,10),
					new MySqlParameter("@CnName", MySqlDbType.VarChar,10),
					new MySqlParameter("@headPic", MySqlDbType.VarChar,50),
					new MySqlParameter("@sex", MySqlDbType.VarChar,10),
					new MySqlParameter("@QQ", MySqlDbType.Float,8),
					new MySqlParameter("@Mobile", MySqlDbType.VarChar,50),
					new MySqlParameter("@Age", MySqlDbType.VarChar,50),
					new MySqlParameter("@address", MySqlDbType.VarChar,100),
					new MySqlParameter("@website", MySqlDbType.VarChar,300),
					new MySqlParameter("@jianjie", MySqlDbType.Text),
					new MySqlParameter("@regtime", MySqlDbType.DateTime),
					new MySqlParameter("@onlinetime", MySqlDbType.DateTime)};
            parameters[0].Value = email;
            parameters[1].Value = pwd;
            parameters[2].Value = UserName;
            parameters[3].Value = CnName;
            parameters[4].Value = headPic;
            parameters[5].Value = sex;
            parameters[6].Value = QQ;
            parameters[7].Value = Mobile;
            parameters[8].Value = Age;
            parameters[9].Value = address;
            parameters[10].Value = website;
            parameters[11].Value = jianjie;
            parameters[12].Value = regtime;
            parameters[13].Value = onlinetime;

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
            strSql.Append("update user set ");
            strSql.Append("pwd=@pwd,");
            strSql.Append("UserName=@UserName,");
            strSql.Append("CnName=@CnName,");
            strSql.Append("headPic=@headPic,");
            strSql.Append("sex=@sex,");
            strSql.Append("QQ=@QQ,");
            strSql.Append("Mobile=@Mobile,");
            strSql.Append("Age=@Age,");
            strSql.Append("address=@address,");
            strSql.Append("website=@website,");
            strSql.Append("jianjie=@jianjie,");
            strSql.Append("regtime=getdate(),");
            strSql.Append("onlinetime=getdate()");
            strSql.Append(" where email=@email ");
            MySqlParameter[] parameters = {
					new MySqlParameter("@pwd", MySqlDbType.VarChar,50),
					new MySqlParameter("@UserName", MySqlDbType.VarChar,10),
					new MySqlParameter("@CnName", MySqlDbType.VarChar,10),
					new MySqlParameter("@headPic", MySqlDbType.VarChar,50),
					new MySqlParameter("@sex", MySqlDbType.VarChar,10),
					new MySqlParameter("@QQ", MySqlDbType.Float,8),
					new MySqlParameter("@Mobile", MySqlDbType.VarChar,50),
					new MySqlParameter("@Age", MySqlDbType.VarChar,50),
					new MySqlParameter("@address", MySqlDbType.VarChar,100),
					new MySqlParameter("@website", MySqlDbType.VarChar,300),
					new MySqlParameter("@jianjie", MySqlDbType.Text),
					new MySqlParameter("@email", MySqlDbType.VarChar,100)};
            parameters[0].Value = pwd;
            parameters[1].Value = UserName;
            parameters[2].Value = CnName;
            parameters[3].Value = headPic;
            parameters[4].Value = sex;
            parameters[5].Value = QQ;
            parameters[6].Value = Mobile;
            parameters[7].Value = Age;
            parameters[8].Value = address;
            parameters[9].Value = website;
            parameters[10].Value = jianjie;
            parameters[11].Value = email;

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
            strSql.Append("delete from user ");
            strSql.Append(" where email=@email ");
            MySqlParameter[] parameters = {
					new MySqlParameter("@email", MySqlDbType.VarChar,-1)};
            parameters[0].Value = email;

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
            strSql.Append("select id,email,pwd,UserName,CnName,headPic,sex,QQ,Mobile,Age,address,website,jianjie,regtime,onlinetime ");
            strSql.Append(" FROM user ");
            strSql.Append(" where email=@email ");
            MySqlParameter[] parameters = {

					new MySqlParameter("@email", MySqlDbType.VarChar,-1)};
            parameters[0].Value = email;

            DataSet ds = DataBase.DbHelper.ExecuteTable(CommandType.Text, strSql.ToString(), parameters).DataSet;
            if (ds.Tables[0].Rows.Count > 0) {
                if (ds.Tables[0].Rows[0]["id"] != null && ds.Tables[0].Rows[0]["id"].ToString() != "") {
                    this.id = int.Parse(ds.Tables[0].Rows[0]["id"].ToString());
                }
                if (ds.Tables[0].Rows[0]["email"] != null) {
                    this.email = ds.Tables[0].Rows[0]["email"].ToString();
                }
                if (ds.Tables[0].Rows[0]["pwd"] != null) {
                    this.pwd = ds.Tables[0].Rows[0]["pwd"].ToString();
                }
                if (ds.Tables[0].Rows[0]["UserName"] != null) {
                    this.UserName = ds.Tables[0].Rows[0]["UserName"].ToString();
                }
                if (ds.Tables[0].Rows[0]["CnName"] != null) {
                    this.CnName = ds.Tables[0].Rows[0]["CnName"].ToString();
                }
                if (ds.Tables[0].Rows[0]["headPic"] != null) {
                    this.headPic = ds.Tables[0].Rows[0]["headPic"].ToString();
                }
                if (ds.Tables[0].Rows[0]["sex"] != null) {
                    this.sex = ds.Tables[0].Rows[0]["sex"].ToString();
                }
                if (ds.Tables[0].Rows[0]["QQ"] != null && ds.Tables[0].Rows[0]["QQ"].ToString() != "") {
                    this.QQ = decimal.Parse(ds.Tables[0].Rows[0]["QQ"].ToString());
                }
                if (ds.Tables[0].Rows[0]["Mobile"] != null) {
                    this.Mobile = ds.Tables[0].Rows[0]["Mobile"].ToString();
                }
                if (ds.Tables[0].Rows[0]["Age"] != null) {
                    this.Age = ds.Tables[0].Rows[0]["Age"].ToString();
                }
                if (ds.Tables[0].Rows[0]["address"] != null) {
                    this.address = ds.Tables[0].Rows[0]["address"].ToString();
                }
                if (ds.Tables[0].Rows[0]["website"] != null) {
                    this.website = ds.Tables[0].Rows[0]["website"].ToString();
                }
                if (ds.Tables[0].Rows[0]["jianjie"] != null) {
                    this.jianjie = ds.Tables[0].Rows[0]["jianjie"].ToString();
                }
                if (ds.Tables[0].Rows[0]["regtime"] != null && ds.Tables[0].Rows[0]["regtime"].ToString() != "") {
                    this.regtime = DateTime.Parse(ds.Tables[0].Rows[0]["regtime"].ToString());
                }
                if (ds.Tables[0].Rows[0]["onlinetime"] != null && ds.Tables[0].Rows[0]["onlinetime"].ToString() != "") {
                    this.onlinetime = DateTime.Parse(ds.Tables[0].Rows[0]["onlinetime"].ToString());
                }
            }
        }

        /// <summary>
        /// 获得数据列表
        /// </summary>
        public DataSet GetList(string strWhere) {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("select * ");
            strSql.Append(" FROM user ");
            if (strWhere.Trim() != "") {
                strSql.Append(" where " + strWhere);
            }
            return DataBase.DbHelper.ExecuteTable(CommandType.Text, strSql.ToString()).DataSet;
        }

        #endregion  Method
    }
}