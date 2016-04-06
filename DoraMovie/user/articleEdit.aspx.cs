using System;
using System.Collections.Generic;
using System.Data;
using MySql.Data.MySqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataBase;
namespace DoraMovie.user {
    public partial class articleEdit : System.Web.UI.Page {
        public string id = "", _title, _content, _zuozhe, _laiyuan, status = "";
        protected void Page_Load(object sender, EventArgs e) {
            if (Request.Cookies["userCookie"] == null) {
                DbHelper.JsWindows("登陆超时", "Login.aspx");
                return;
            }
            MyListDDLTree(0, fenlei_select);
                        
            if (!IsPostBack) {
                //Add
                using (MySqlDataReader dr = (MySqlDataReader)DbHelper.ExecuteReader(CommandType.Text, "select username from user where email='"+Request.Cookies["userCookie"]["name"]+"' ")) {
                    if (dr.Read()) {
                        if (string.IsNullOrEmpty(dr[0].ToString())) {
                            DbHelper.JsWindows("请填写完整您的基本资料", "edit.aspx");
                            return;
                        } else {
                            zuozhe.Value = dr["username"].ToString();
                        }
                    }
                }

                // Edit
                id = DbHelper.q("id") == null ? "" : DbHelper.MyFormatstr(DbHelper.q("id"));
                if (!string.IsNullOrEmpty(id)) {
                    DataTable dt = DbHelper.ExecuteTable(CommandType.Text, "select * from article where id=" + id + "", null);
                    title.Value = dt.Rows[0]["title"].ToString();
                    zuozhe.Value = dt.Rows[0]["zuozhe"].ToString();
                    laiyuan.Value = dt.Rows[0]["laiyuan"].ToString();
                    Textarea1.Value = dt.Rows[0]["content"].ToString();
                    status = dt.Rows[0]["status"].ToString();
                    fenlei_select.Value = dt.Rows[0]["class"].ToString();
                }
            }

            if (Request["submitButton"] != null) {
                string sql, checkArray = Request["statuscheckbox"];
                string textarea = DbHelper.MyFormatstr(Textarea1.Value);
                if (!string.IsNullOrEmpty(id)) {
                    // Edit
                    sql = "update [article] set isPast=0, title='" + title.Value + "',class='" + fenlei_select.Value + "', content='" + textarea + "',zuozhe='" + zuozhe.Value + "',laiyuan='" + laiyuan.Value + "',status='" + checkArray + "' where id=" + id + "";
                } else {
                    // Add
                    sql = "insert into [article] (title,content,zuozhe,laiyuan,zhaiyao,status,addtime,lookcount,class,isPast) values ('" + title.Value + "','" + textarea + "','" + zuozhe.Value + "','" + laiyuan.Value + "','" + DbHelper.MyFormatnoHtml(textarea).Remove(120) + "','" + checkArray + "',getdate(),0,'" + fenlei_select.Value + "',0)";
                }
                try {
                    DbHelper.ExecuteNonQuery(CommandType.Text, sql, null);
                    DbHelper.JsWindows("投稿完成，等待管理员审核", "articleManage.aspx");
                } catch (Exception error) {
                    DbHelper.JsWindows(error.ToString());
                }
            }
        }
        string Tab1 = "";
        public void MyListDDLTree(int pid, System.Web.UI.HtmlControls.HtmlSelect mDDL) {
            DataTable dt = DbHelper.ExecuteTable(CommandType.Text, "select * from articleClass where cid=" + pid);
            foreach (DataRow dr in dt.Rows) {
                mDDL.Items.Add(new ListItem(Tab1 + dr[2].ToString(), dr[0].ToString()));
                Tab1 += Server.HtmlDecode("&nbsp;&nbsp;&nbsp;&nbsp;"); // &nbsp; -> &#160;
                MyListDDLTree(int.Parse(dr[0].ToString()), mDDL);
                Tab1 = Tab1.Substring(0, Tab1.Length - 4);
            }
        }

    }
}