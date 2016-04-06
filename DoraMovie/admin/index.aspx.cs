using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HHLimit;
using DataBase;

namespace DoraMovie.admin
{
    public partial class index : System.Web.UI.Page
    {
        config.AppClass appClass = new config.AppClass();
        Model.adminManage adminModel;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (DbHelper.q("Action") == "Logout")
                {
                    HttpCookie cookie = new HttpCookie("adminCookie");
                    cookie.Expires = DateTime.Now.AddDays(-30);
                    Response.Cookies.Add(cookie);
                    DbHelper.JsWindows("退出成功", "index.aspx");
                }
                if (Request.Cookies["adminCookie"] != null)
                {
                    Response.Redirect("articleManage.aspx");
                }
            }
            else
            {
                LoginButton_Click(sender, e);
            }
        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            string name = Request["LoginName"];
            string pwd = Request["LoginPwd"];
            if (string.IsNullOrEmpty(name))
            {
                DbHelper.JsWindows("请输入管理员账号");
                return;
            }
            else if (string.IsNullOrEmpty(pwd))
            {
                DbHelper.JsWindows("请输入管理员密码");
                return;
            }
            string md5Pwd = DbHelper.md5(pwd);
            adminModel = new Model.adminManage(name);

            try
            {
                if (name == adminModel.name && md5Pwd == adminModel.pwd)
                {
                    HttpCookie cookie = new HttpCookie("adminCookie");
                    cookie["name"] = name;
                    cookie.Expires = DateTime.Now.AddDays(30);
                    Response.Cookies.Add(cookie);
                    Command.DataReader();

                    DbHelper.JsWindows("登陆成功", "articleManage.aspx");
                }
                else
                {
                    DbHelper.JsWindows("登录失败!用户名或密码错误！");
                }
            }
            catch (Exception ex)
            {

                DbHelper.JsWindows("登录失败!\r\n" + ex.Message);
            }
        }
    }
}