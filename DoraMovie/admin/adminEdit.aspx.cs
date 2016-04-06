using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataBase;
namespace DoraMovie.admin {
    public partial class adminEdit : System.Web.UI.Page {
        public Model.adminManage adminModel;        
        protected void Page_Load(object sender, EventArgs e) {
            if (Request.Cookies["adminCookie"] == null) {
                DbHelper.JsWindows("管理员超时", "index.aspx");
            } 
            string _admin = Request.Cookies["adminCookie"]["name"];
            adminModel = new Model.adminManage(_admin);


            if (!IsPostBack) {
            }

            if (Request["submitButton"] != null) {
                //adminModel.name = Request["user"];
                if (Request["pwd"] != "") {
                    adminModel.pwd = DbHelper.md5(Request["pwd"]);
                }
                adminModel.isPast = int.Parse(Request["ispast"]);
                adminModel.Email = (Request["email"]);
                adminModel.addtime = DateTime.Now;
                if (DbHelper.q("Action") != "Edit") {
                    if (adminModel.Add() > 0) {
                        DbHelper.JsWindows("添加完成", "adminManage.aspx");
                    }
                } else {
                    adminModel.id = int.Parse(DbHelper.q("id"));
                    if (adminModel.Update() == true) {
                        DbHelper.JsWindows("修改完成", "adminManage.aspx");
                    }
                }
            }

        }
    }
}