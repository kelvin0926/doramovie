using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataBase;

namespace DoraMovie.about {
    public partial class aboutMe : System.Web.UI.Page {
        public Model.about aboutModel;
        protected void Page_Load(object sender, EventArgs e) {
            aboutModel = new Model.about();
        }
    }
}