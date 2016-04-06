using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataBase;
namespace DoraMovie.admin {
    public partial class youlianManage : System.Web.UI.Page {
        public string paging;
        protected void Page_Load(object sender, EventArgs e) {
            if ((Request.Cookies["adminCookie"]) == null) {
                DbHelper.JsWindows("管理员超时", "index.aspx");
            }

            #region 删除选项
            Model.friendsite friendModel = new Model.friendsite();
            string check = Request["checkbox"];
            string backUrl = Request.Url.AbsoluteUri;
            if (DbHelper.q("Action") == "Delete") {
                int Id = int.Parse(DbHelper.q("id"));
                friendModel.Delete(Id);
                DbHelper.JsWindows("删除完成", Request.UrlReferrer.AbsoluteUri);
            }
            if (Request["delbutton"] == "del") {
                if (string.IsNullOrEmpty(check)) {
                    DbHelper.JsWindows("没有选中项可以删", backUrl);
                } else {
                    DbHelper.ExecuteNonQuery(CommandType.Text, "delete from friendsite where id in (" + check + ")", null);
                    DbHelper.JsWindows("删除完成", backUrl);
                }
            }
            #endregion

            #region 数据绑定&分页
            int PageSize = 16;
            int PageCount, RecordCount;
            int PageIndex = Convert.ToInt32(Request.QueryString["Page"]);
            RpList.DataSource = Paginator.MyExecutePage("*", "friendsite", "id", "id desc", PageIndex, PageSize, out RecordCount, out PageCount);
            paging = Paginator.Pagination(PageIndex, PageCount, RecordCount);
            RpList.DataBind();
            #endregion
        }
    }
}