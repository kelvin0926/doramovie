using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataBase;

namespace DoraMovie.user {
    public partial class Login : DbHelper {
        protected void Page_Load(object sender, EventArgs e) {
            if (Request["Login"] != null) {
                string email = Request["Username"];
                SqlParameter[] Param = {
                                           new SqlParameter("@email",email),
                                           new SqlParameter("@pwd",md5(Request["Password"]))
                                       };
                using (SqlDataReader dr = (SqlDataReader)ExecuteReader(CommandType.Text, "select id from user where email=@email and pwd=@pwd", Param)) {
                    if (dr.Read()) {
                        ExecuteNonQuery(CommandType.Text, "update user set onlinetime=getdate() where email=@email", Param);
                        HttpCookie cookie = new HttpCookie("userCookie");
                        cookie["name"] = email;
                        cookie.Expires = DateTime.Now.AddDays(30);
                        Response.Cookies.Add(cookie);
                        Response.Redirect("index.aspx");
                    } else {
                        JsWindows("信息不对，登录失败");
                    }
                }
            }

            if (Request["button"] == "regButton") {
                string email = MyFormatstr(Request["email"]);
                string pwd = MyFormatstr(md5(Request["pwd"]));
                SqlParameter[] Param = {
                                           new SqlParameter("@email",email),
                                           new SqlParameter("@pwd",pwd)
                                       };

                using (SqlDataReader dr = (SqlDataReader)ExecuteReader(CommandType.Text, "select email from user where email=@email", Param)) {
                    if (dr.Read()) {
                        toast("邮箱已经存在了");
                    } else {
                        ExecuteNonQuery(CommandType.Text, "insert into user (email,pwd) values (@email,@pwd)", Param);
                        HttpCookie cookie = new HttpCookie("userCookie");
                        cookie["name"] = email;
                        cookie.Expires = DateTime.Now.AddDays(30);
                        Response.Cookies.Add(cookie);
                        toast("success");
                    }
                }
            }
        }
    }
}