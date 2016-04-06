using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataBase;
using System.IO.Compression;
namespace DoraMovie {
    public partial class Site2 : System.Web.UI.MasterPage {
        public config.AppClass appClass = new config.AppClass();

        protected void Page_Load(object sender, EventArgs e) {
            int _Gzip = Request.Headers["Accept-Encoding"].ToLower().IndexOf("gzip"); // 有则返回0，否则返回-1
            if (_Gzip == 0) {
                Response.Filter = new GZipStream(Response.Filter, CompressionMode.Compress);
                Response.AppendHeader("Content-Encoding", "gzip");
            }

            WallRP.DataSource = DbHelper.ExecuteTable(CommandType.Text, "select * from movies where status='wall' and body like '%<img%' order by id desc limit 0,30");
            kuaixun.DataSource = DbHelper.ExecuteTable(CommandType.Text, "select * from movies order by Look desc limit 0,12");

            Page.DataBind();
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
                str = DateTime.Now.ToShortDateString();
            }
            return str;
        }
    }
}