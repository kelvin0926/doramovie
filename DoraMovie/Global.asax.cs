using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;
using System.Xml;
using DataBase;

namespace DoraMovie {
    public class Global : System.Web.HttpApplication {

        protected void Application_Start(object sender, EventArgs e) {
            
        }

        protected void Session_Start(object sender, EventArgs e) {

        }

        protected void Application_BeginRequest(object sender, EventArgs e) {
            // 301 转向
            //string _Url = HttpContext.Current.Request.Url.Authority;
            //if (!_Url.Contains("www.") && !_Url.Contains("localhost"))
            //{
            //    HttpContext.Current.Response.Clear();
            //    HttpContext.Current.Response.StatusCode = 301;
            //    HttpContext.Current.Response.Status = "301 Moved Permanently";
            //    HttpContext.Current.Response.AddHeader("Location", "http://www." + _Url);
            //}
        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e) {

        }

        protected void Application_Error(object sender, EventArgs e) {

        }

        protected void Session_End(object sender, EventArgs e) {

        }

        protected void Application_End(object sender, EventArgs e) {

        }
    }
}