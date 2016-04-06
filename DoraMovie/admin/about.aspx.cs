using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataBase;
namespace DoraMovie.admin {
    public partial class about : System.Web.UI.Page {
        public Model.about aboutModel;
        protected void Page_Load(object sender, EventArgs e) {
            if (Request.Cookies["adminCookie"] == null) {
                DbHelper.JsWindows("管理员超时", "index.aspx");
            }
            aboutModel = new Model.about();

            if (Request["submitButton"] != null) {
                aboutModel.contact = Request["Textarea2"];
                aboutModel.aboutMe = Request["Textarea1"];

                try {
                    if (aboutModel.Exists() > 0) {
                        aboutModel.Update();
                        DbHelper.JsWindows("更新完成", "about.aspx");
                    } else {
                        aboutModel.Add();
                        DbHelper.JsWindows("添加完成", "about.aspx");
                    }
                } catch(Exception error) {
                    DbHelper.JsWindows("更新失败 " + error.ToString(), "about.aspx");
                }
            }
        }
    }
}