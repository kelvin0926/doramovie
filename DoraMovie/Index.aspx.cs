using System;
using System.Collections.Generic;
using System.Web;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataBase;
namespace DoraMovie {
    public partial class Index : System.Web.UI.Page {
     
        protected void Page_Load(object sender, EventArgs e) {

           

            newList.DataSource = DbHelper.ExecuteTable(CommandType.Text, "select * from movies where enable and (status is null or status='') and body like '%<img%'  order by id desc limit 0,17");
            newList.DataBind();

            TopRP.DataSource = DbHelper.ExecuteTable(CommandType.Text, "select * from movies where enable and  status='top' order by addtime desc");
            TopRP.DataBind();

            
        }
    }
}