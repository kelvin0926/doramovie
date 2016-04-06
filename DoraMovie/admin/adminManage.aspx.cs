using System;
using System.Collections.Generic;
using System.Data;
using MySql.Data.MySqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataBase;
namespace DoraMovie.admin {
    public partial class adminManage : System.Web.UI.Page {
        public string paging;
        public Model.adminManage adminModel;

        protected void Page_Load(object sender, EventArgs e) {
                  
            
            #region 删除选项
            string check = Request["checkbox"];
            string backUrl = Request.Url.AbsoluteUri;
            if (DbHelper.q("Action") == "Delete") {
                adminModel.Delete(int.Parse(DbHelper.q("id")));
                DbHelper.JsWindows("删除完成", Request.UrlReferrer.AbsoluteUri);
            }
            if (Request["delbutton"] == "del") {
                if (string.IsNullOrEmpty(check)) {
                    DbHelper.JsWindows("没有选中项可以删", backUrl);
                } else {
                    DbHelper.ExecuteNonQuery(CommandType.Text, "delete from adminManage where id in (" + check + ")", null);
                    DbHelper.JsWindows("删除完成", backUrl);
                }
            }
            #endregion

            #region 数据绑定&分页
            int PageSize = 16;
            int PageCount, RecordCount;
            int PageIndex = Convert.ToInt32(Request.QueryString["Page"]);
            RpList.DataSource = Paginator.MyExecutePage("*", "adminManage", "id", "id desc", PageIndex, PageSize, out RecordCount, out PageCount);
            paging = Paginator.Pagination(PageIndex, PageCount, RecordCount);
            RpList.DataBind();
            #endregion
        }

        protected string isPast() {
            int e = int.Parse(Eval("isPast").ToString());
            if (e == 1) {
                return "<span class='label label-sm label-success'>查看所有文章（包括子管理员）</span>";
            } else {
                return "<span class='label label-sm label-warning'>只能看自己及投稿人文章</span>";
            }
        }
    }
}