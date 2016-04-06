using System;
using System.Collections.Generic;
using System.Web;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataBase;
namespace DoraMovie.admin
{
    public partial class articleEdit : System.Web.UI.Page
    {
        public string id = "", _title, _content, _zuozhe, _laiyuan, status = "", _isPast;
        public bool enable=true;
        //public List<Model.ArticleClass> article = new List<Model.ArticleClass>();
        protected void Page_Load(object sender, EventArgs e)
        {


            id = DbHelper.q("id") == null ? "" : DbHelper.MyFormatstr(DbHelper.q("id"));

            DataTable dtTypes = DbHelper.ExecuteTable(CommandType.Text, "select * from articleClass where cid=0");
            chkType.DataSource = dtTypes;
            chkType.DataBind();

            //fenlei_select.Value = fenlei_value.Value;
            if (!IsPostBack)
            {

                if (!string.IsNullOrEmpty(id))
                {
                    DataTable dt = DbHelper.ExecuteTable(CommandType.Text, "select * from Movies where id=" + id + "", null);
                    title.Value = dt.Rows[0]["title"].ToString();
                    laiyuan.Value = dt.Rows[0]["laiyuan"].ToString();
                    Textarea1.Value = dt.Rows[0]["body"].ToString();
                    status = dt.Rows[0]["status"].ToString();
                    //zhaiyao.Value = dt.Rows[0]["zhaiyao"].ToString();
                    downURL.Value = dt.Rows[0]["downURL"].ToString();
                    enable = (dt.Rows[0]["enable"] + "") == "1";
                    string[] selectedTypes = dt.Rows[0]["class"].ToString().Split(new string[] { "," }, StringSplitOptions.RemoveEmptyEntries);
                    foreach (var selectedType in selectedTypes)
                    {
                        foreach (ListItem item in chkType.Items)
                        {
                            if (item.Value == selectedType) item.Selected = true;
                        }
                    }
                    txtType.Value = dt.Rows[0]["class"].ToString();
                }
            }
        }
        protected void submitButton_Button(object sender, EventArgs e)
        {
            string sql, checkArray = Request["statuscheckbox"];
            string enableArray = Request["enable"];
            if (string.IsNullOrEmpty(title.Value))
            {
                DbHelper.JsWindows("影片名不能为空！");
                return;
            }
            else if (string.IsNullOrEmpty(downURL.Value))
            {
                DbHelper.JsWindows("播放地址不能为空！");
                return;
            }
            else if (string.IsNullOrEmpty(txtType.Value))
            {
                DbHelper.JsWindows("请至少选择一项类别！");
                return;
            }


            string textarea = DbHelper.MyFormatstr(Textarea1.Value);
            if (!string.IsNullOrEmpty(id))
            {
                // Edit
                sql = "update movies set title='" + title.Value + "',class='" + txtType.Value + "', body='" + textarea + "',laiyuan='" + laiyuan.Value + "',status='" + checkArray + "',downurl='" + downURL.Value + "',zhaiyao='" + "',enable=" + enableArray + " where id=" + id + "";
            }
            else
            {
                // Add
                sql = "insert into movies (title,body,laiyuan,zhaiyao,status,addtime,Look,class,downURL,enable) values ('" + title.Value + "','" + textarea + "','" + laiyuan.Value + "','" + "','" + checkArray + "',now(),0,'" + txtType.Value + "','" + downURL.Value + "'," + enableArray + ")";
            }
            try
            {
                int count = DbHelper.ExecuteNonQuery(CommandType.Text, sql, null);
                if (count > 0)
                    DbHelper.JsWindows("保存完成", "articleManage.aspx");
                else
                {
                    DbHelper.JsWindows("保存失败", "articleManage.aspx");
                }
            }
            catch (Exception error)
            {
                DbHelper.JsWindows("保存失败!\r\n" + error.Message);
            }
        }

    }
}