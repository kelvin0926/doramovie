using System;
using System.Collections.Generic;
using System.Data;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataBase;
namespace DoraMovie {
    public partial class PageFoot : System.Web.UI.UserControl {
        protected void Page_Load(object sender, EventArgs e) {
            friendRp.DataSource = DbHelper.ExecuteTable(CommandType.Text, "select title,url from friendsite where ispast=1");
            Page.DataBind();
        }
    }
}