using System;
using System.Collections.Generic;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataBase;

namespace DoraMovie.admin {
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
            if ((Request.Cookies["adminCookie"]) == null) {
                DbHelper.JsWindows("管理员超时", "index.aspx");
            }

            dh.Add(new dhClass("", "全部"));
            dh.Add(new dhClass("top", "置顶推荐"));
            dh.Add(new dhClass("wall", "值得关注"));

            #region 删除选项
            string check = Request["checkbox"];
            string backUrl = Request.Url.AbsoluteUri;
            if (DbHelper.q("Action") == "Delete") {
                DbHelper.ExecuteNonQuery(CommandType.Text, "delete from Movies where id = " + DbHelper.q("id") + "", null);
                DbHelper.JsWindows("删除完成", Request.UrlReferrer.AbsoluteUri);
            }
            if (Request["delbutton"] == "del") {
                if (string.IsNullOrEmpty(check)) {
                    DbHelper.JsWindows("没有选中项可以删", backUrl);
                } else {
                    DbHelper.ExecuteNonQuery(CommandType.Text, "delete from Movies where id in (" + check + ")", null);
                    DbHelper.JsWindows("删除完成", backUrl);
                }
            }
            #endregion

            #region 值得关注按钮
            if (Request["wallButton"] == "wall") {
                if (string.IsNullOrEmpty(check)) {
                    DbHelper.JsWindows("没有选中项可以用", backUrl);
                } else {
                    if (string.IsNullOrEmpty(DbHelper.q("type"))) {
                        DbHelper.ExecuteNonQuery(CommandType.Text, "update Movies set status='wall' where id in (" + check + ")", null);
                    } else {
                        DbHelper.ExecuteNonQuery(CommandType.Text, "update Movies set status='' where id in (" + check + ")", null);
                    }
                    DbHelper.JsWindows("完成", backUrl);
                }
            }
            #endregion

            #region 本周推荐按钮
            if (Request["topbutton"] == "top") {
                if (string.IsNullOrEmpty(check)) {
                    DbHelper.JsWindows("没有选中项可以用", backUrl);
                } else {
                    if (string.IsNullOrEmpty(DbHelper.q("type"))) {
                        DbHelper.ExecuteNonQuery(CommandType.Text, "update Movies set status='top' where id in (" + check + ")", null);
                    } else {
                        DbHelper.ExecuteNonQuery(CommandType.Text, "update Movies set status='' where id in (" + check + ")", null);
                    }
                    DbHelper.JsWindows("完成", backUrl);
                }
            }
            #endregion


            #region 数据绑定&分页
            search = DbHelper.q("search");
            int PageSize = 16;
            int PageCount, RecordCount;
            int PageIndex = Convert.ToInt32(Request.QueryString["Page"]);
            if (string.IsNullOrEmpty(DbHelper.q("type")) && string.IsNullOrEmpty(search)) {
                articleRP.DataSource = Paginator.MyExecutePage("*", "Movies", "id", "id desc", PageIndex, PageSize, out RecordCount, out PageCount);
                paging = Paginator.Pagination(PageIndex, PageCount, RecordCount);
            } else if (!string.IsNullOrEmpty(search)) {
                articleRP.DataSource = Paginator.MyExecutePage("*", "Movies", "title like '%" + search + "%'", "id", "id desc", PageIndex, PageSize, out RecordCount, out PageCount);
                paging = Paginator.wzPagination(PageIndex, PageCount, RecordCount);
            } else {
                articleRP.DataSource = Paginator.MyExecutePage("*", "Movies", "status like '%" + DbHelper.q("type") + "%'", "id", "id desc", PageIndex, PageSize, out RecordCount, out PageCount);
                paging = Paginator.wzPagination(PageIndex, PageCount, RecordCount);
            }
            articleRP.DataBind();
            #endregion
        }
    }
}