using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using DataBase;
namespace DoraMovie.user {
    public partial class index : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {
            if (Request.Cookies["userCookie"] == null) {
                DbHelper.JsWindows("登陆超时","Login.aspx");
                return;
            }
            if (DbHelper.q("Action") == "Logout") {
                HttpCookie cookie = new HttpCookie("userCookie");
                cookie.Expires = DateTime.Now.AddDays(-30);
                Response.Cookies.Add(cookie);

                Response.Redirect("/index.aspx");
            }
            if (!IsPostBack) {
                ziliao.DataSource = DbHelper.ExecuteTable(CommandType.Text, "select * from user where email='"+Request.Cookies["userCookie"]["name"]+"'");
                ziliao.DataBind();                
            }
        }
    }
}