using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OurMovie.Movie
{
    public partial class Player : System.Web.UI.Page
    {
        public static string URL = string.Empty;
        public static string TITLE = "在线观看";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                URL = HttpUtility.HtmlEncode(Request["s"]);
               
                if (!string.IsNullOrEmpty(URL))
                {
                  
                }
                TITLE = HttpUtility.HtmlDecode(Request["name"]);
            }
        }
    }
}