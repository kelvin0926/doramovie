using DataBase;
using DoraMovie.config;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DoraMovie.admin
{
    public partial class admin : System.Web.UI.MasterPage
    {
        AppClass appClass = new AppClass();
        public string Title = string.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {
            Title = Application["title"] + "";
            if ((Request.Cookies["adminCookie"]) == null)
            {
                DbHelper.JsWindows("登录超时", "index.aspx");
            }
        }
    }
}