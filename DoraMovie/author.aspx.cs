using System;
using System.Collections.Generic;
using System.Data;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataBase;
namespace DoraMovie {
    public partial class author : System.Web.UI.Page {
        public string Paging;
        protected void Page_Load(object sender, EventArgs e) {
            daohang.DataSource = DbHelper.ExecuteTable(CommandType.Text, "select name from articleClass");
            kuaixun.DataSource = DbHelper.ExecuteTable(CommandType.Text, "select * from article where status='kuaixun' and isPast<>0 order by addtime desc limit 0,10");

            Page.DataBind();

            int PageSize = 15;
            int PageCount = 0, RecordCount = 0;
            int PageIndex = Convert.ToInt32(Request.QueryString["Page"]);
            newList.DataSource = Paginator.MyExecutePage("*", "article", "zuozhe='" + DbHelper.q("author") + "' and isPast<>0", "id", "addtime desc", PageIndex, PageSize, out RecordCount, out PageCount);
            Paging = Paginator.wzPagination_qiantai(PageIndex, PageCount, RecordCount);


        }

        public string times() {
            string str = null;
            TimeSpan _t = DateTime.Now - DateTime.Parse(Eval("addtime").ToString());

            if (_t.Minutes > 0 && _t.Minutes < 60) {
                str = _t.Minutes + " 分钟前";
            }
            if (_t.Hours > 0 && _t.Hours <= 24) {
                str = _t.Hours + " 小时前";
            }
            if (_t.Days > 0) {
                str = _t.Days + " 天前";
            }
            if (_t.Days > 3) {
                str = DateTime.Now.ToShortTimeString();
            }
            return str;
        }

    }
}