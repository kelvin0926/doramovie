using System;
using System.Collections.Generic;
using System.Collections;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Data.SqlClient;
using DataBase;

namespace DoraMovie.user {
    public partial class edit : System.Web.UI.Page {
        public int _pingfen = 100;
        public Model.user user;
        protected void Page_Load(object sender, EventArgs e) {
            if (Request.Cookies["userCookie"] == null) {
                DbHelper.JsWindows("登陆超时", "Login.aspx");
                return;
            }
            string _cookie = Request.Cookies["userCookie"]["name"];
            user = new Model.user(_cookie);

            if (!IsPostBack) {
            }

            if (Request["submitButton"] == "tijiao") {
                user.UserName = Request["form-field-username"];
                user.CnName = Request["form-field-first"];
                user.Age = Request["form-field-date"];
                user.sex = Request["form-field-radio"];
                user.jianjie = Request["form-field-comment"];
                user.website = Request["form-field-website"];
                user.Mobile = Request["form-field-phone"];
                user.address = Request["address"];
                user.QQ = decimal.Parse(Request["qq"]);

                HttpPostedFile file1 = Request.Files["ctl00$content$FileUpload1"];
                if (file1.ContentLength > 0) {
                    if (file1.ContentLength > 1048576) {
                        DbHelper.JsWindows("文件大小不能超过1MB");
                        return;
                    }
                    Hashtable extTable = new Hashtable();
                    extTable.Add("image", "jpg,jpeg,png,gif");
                    string hzm = file1.FileName.Substring(file1.FileName.LastIndexOf('.') + 1).ToLower();
                    if (Array.IndexOf(((String)extTable["image"]).Split(','), hzm) == -1) {
                        DbHelper.JsWindows("上传文件格式不对，只支持 " + extTable["image"] + " 图片上传");
                        return;
                    }
                    user.headPic = DateTime.Now.ToString("yyyyMMddHHmmss_ffff") + "." + hzm;
                    file1.SaveAs(Server.MapPath("image/") + user.headPic);
                }

                user.Update();
            }
        }
    }
}