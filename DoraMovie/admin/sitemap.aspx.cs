using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using DataBase;
namespace DoraMovie.admin
{
    public partial class sitemap : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                string _str = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n";
                _str += "<urlset>\r\n";
                _str += "<url>\r\n";
                _str += "   <loc>http://" + Application["url"] + "</loc>\r\n";
                _str += "   <lastmod>" + DateTime.Now.ToString("yyyy-MM-dd") + "</lastmod>\r\n";
                _str += "   <changefreq>daily</changefreq>\r\n";
                _str += "   <priority>1.0</priority>\r\n";
                _str += "</url>\r\n";
                DataTable dt = DbHelper.ExecuteTable(CommandType.Text, "select * from movies where enable order by id desc limit 0,2000");
                foreach (DataRow dr in dt.Rows)
                {
                    _str += "<url>\r\n";
                    _str += "   <loc>http://" + Application["url"] + "/movie/" + dr["id"] + ".html</loc>\r\n";
                    _str += "   <lastmod>" + DateTime.Parse(dr["addtime"].ToString()).ToString("yyyy-MM-dd") + "</lastmod>\r\n";
                    _str += "   <changefreq>daily</changefreq>\r\n";
                    _str += "   <priority>1.0</priority>\r\n";
                    _str += "</url>\r\n";
                }
                _str += "</urlset>";

                StreamWriter sw = new StreamWriter(Server.MapPath("/sitemap.xml"), false, System.Text.Encoding.UTF8);
                sw.Write(_str);
                sw.Flush();
                sw.Close();
                DbHelper.JsWindows("生成成功", Request.UrlReferrer.AbsolutePath);
            }
            catch (Exception error)
            {
                DbHelper.JsWindows(error.Message);
            }
        }
    }
}