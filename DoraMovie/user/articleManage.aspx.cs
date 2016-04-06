using System;
using System.Collections.Generic;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataBase;
namespace DoraMovie.user {
    /// <summary>
    /// 管理员后台导航栏实体类
    /// </summary>
    public class dhClass {
        private string _name;
        private string _id;
        public string name {
            get { return _name; }
            set { _name = value; }
        }
        public string id {
            get { return _id; }
            set { _id = value; }
        }

        public dhClass(string _id, string _name) {
            id = _id;
            name = _name;
        }
    }

    public partial class articleManage : System.Web.UI.Page {
        public string paging, search;
        public List<dhClass> dh = new List<dhClass>();

        protected void Page_Load(object sender, EventArgs e) {
            if ((Request.Cookies["userCookie"]) == null) {
                DbHelper.JsWindows("管理员超时", "index.aspx");
            }
            string _user = Request.Cookies["userCookie"]["name"];

            dh.Add(new dhClass("top", "推荐文章"));
            dh.Add(new dhClass("wall", "推广墙"));
            dh.Add(new dhClass("kuaixun", "快讯文章"));

            #region 删除选项
            string check = Request["checkbox"];
            string backUrl = Request.Url.AbsoluteUri;
            if (DbHelper.q("Action") == "Delete") {
                DbHelper.ExecuteNonQuery(CommandType.Text, "delete from article where id = " + DbHelper.q("id") + "", null);
                DbHelper.JsWindows("删除完成", Request.UrlReferrer.AbsoluteUri);
            }
            if (Request["delbutton"] == "del") {
                if (string.IsNullOrEmpty(check)) {
                    DbHelper.JsWindows("没有选中项可以删");
                } else {
                    DbHelper.ExecuteNonQuery(CommandType.Text, "delete from article where id in (" + check + ")", null);
                    DbHelper.JsWindows("删除完成", backUrl);
                }
            }
            #endregion

            #region 数据绑定&分页
            search = DbHelper.q("search");
            int PageSize = 16;
            int PageCount, RecordCount;
            int PageIndex = Convert.ToInt32(Request.QueryString["Page"]);
            if (string.IsNullOrEmpty(DbHelper.q("type")) && string.IsNullOrEmpty(search)) {
                articleRP.DataSource = Paginator.MyExecutePage("*", "article", "zuozhe='" + _user + "'", "id", "id desc", PageIndex, PageSize, out RecordCount, out PageCount);
                paging = Paginator.Pagination(PageIndex, PageCount, RecordCount);
            } else if (!string.IsNullOrEmpty(search)) {
                articleRP.DataSource = Paginator.MyExecutePage("*", "article", "title like '%" + search + "%' and zuozhe='" + _user + "'", "id", "id desc", PageIndex, PageSize, out RecordCount, out PageCount);
                paging = Paginator.wzPagination(PageIndex, PageCount, RecordCount);
            } else {
                articleRP.DataSource = Paginator.MyExecutePage("*", "article", "status like '%" + DbHelper.q("type") + "%' and zuozhe='" + _user + "'", "id", "id desc", PageIndex, PageSize, out RecordCount, out PageCount);
                paging = Paginator.wzPagination(PageIndex, PageCount, RecordCount);
            }
            articleRP.DataBind();
            #endregion
        }
    }
}