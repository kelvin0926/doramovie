using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataBase;

namespace DoraMovie.admin {
    public partial class user : System.Web.UI.Page {
        public string paging, search;
        protected void Page_Load(object sender, EventArgs e) {
            if ((Request.Cookies["adminCookie"]) == null) {
                DbHelper.JsWindows("管理员超时", "index.aspx");
            }
            #region 删除选项
            string check = Request["checkbox"];
            string backUrl = Request.Url.AbsoluteUri;
            if (DbHelper.q("Action") == "Delete") {
                DbHelper.ExecuteNonQuery(CommandType.Text, "delete from user where id = " + DbHelper.q("id") + "", null);
                DbHelper.JsWindows("删除完成", Request.UrlReferrer.AbsoluteUri);
            }
            if (Request["delbutton"] == "del") {
                if (string.IsNullOrEmpty(check)) {
                    DbHelper.JsWindows("没有选中项可以删", backUrl);
                } else {
                    DbHelper.ExecuteNonQuery(CommandType.Text, "delete from user where id in (" + check + ")", null);
                    DbHelper.JsWindows("删除完成", backUrl);
                }
            }
            #endregion

            #region 代理登陆
            if (DbHelper.q("Action") == "Edit") {
                string _cookieName = DbHelper.q("name");
                HttpCookie cookie = new HttpCookie("userCookie");
                cookie["name"] = _cookieName;
                cookie.Expires = DateTime.Now.AddDays(1);
                Response.Cookies.Add(cookie);

                Response.Redirect("../user/index.aspx");
            }
            #endregion

            #region 数据绑定&分页
            int PageSize = 16;
            int PageCount, RecordCount;
            int PageIndex = Convert.ToInt32(Request.QueryString["Page"]);
            userRP.DataSource = Paginator.MyExecutePage("*", "user", "id", "id desc", PageIndex, PageSize, out RecordCount, out PageCount);
            paging = Paginator.Pagination(PageIndex, PageCount, RecordCount);
            userRP.DataBind();
            #endregion
        }

        public int _count() {
            int _count = 11;// (int)DbHelper.ExecuteScalar(CommandType.Text, "select count(id) from movies where zuozhe='" + Eval("userName") + "'");
            return _count;
        }
    }
}