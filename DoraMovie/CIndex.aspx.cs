using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;
using DataBase;
namespace DoraMovie
{
    public partial class CIndex : System.Web.UI.Page
    {
        public string Paging, _Title;
        public int ItemCount = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            

            int PageSize = 39;
            int PageCount = 0, RecordCount = 0;
            int PageIndex = Convert.ToInt32(Request.QueryString["Page"]);
            string _guojia = DbHelper.MyFormatstr(DbHelper.q("guojia"));
            string _class = DbHelper.MyFormatstr(DbHelper.q("class"));
            if (string.IsNullOrEmpty(_class))
            {
                Response.Redirect("~");
            }
            if (!string.IsNullOrEmpty(_class))
                _Title = _class + "|";

            if (!string.IsNullOrEmpty(_class))
            {

                newList.DataSource = Paginator.MyExecutePage("*", "movies", " enable and (class like '%" + _class + "%' or title like '%" + _class + "%')", "id", "addtime desc", PageIndex, PageSize, out RecordCount, out PageCount);

                // 将关键词写入数据库，以便日后tip方便之用。
                DbHelper.ExecuteNonQuery(CommandType.Text, "insert into tip (searchTip) values ('" + _class + "')");
            }
            if (!string.IsNullOrEmpty(_guojia))
            {
                newList.DataSource = Paginator.MyExecutePage("*", "movies", " enable and (guojia like '%" + _guojia + "%')", "id", "addtime desc", PageIndex, PageSize, out RecordCount, out PageCount);
            }
            if (string.IsNullOrEmpty(_guojia) && string.IsNullOrEmpty(_class))
            {
                newList.DataSource = Paginator.MyExecutePage("*", "movies", "id"," enable ", "addtime desc", PageIndex, PageSize, out RecordCount, out PageCount);
            }
            Paging = Paginator.wzPagination_qiantai(PageIndex, PageCount, RecordCount);
            ItemCount = RecordCount;
            Page.DataBind();
        }
    }
}