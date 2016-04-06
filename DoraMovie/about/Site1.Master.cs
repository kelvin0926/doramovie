using System;
using System.Collections.Generic;
using System.Data;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataBase;

namespace DoraMovie.about {
    public partial class Site1 : System.Web.UI.MasterPage {
        protected void Page_Load(object sender, EventArgs e) {
            daohang.DataSource = DbHelper.ExecuteTable(CommandType.Text, "select name from articleClass");

            Page.DataBind();
        }
    }
}