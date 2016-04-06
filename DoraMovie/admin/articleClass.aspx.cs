using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataBase;
namespace DoraMovie.admin {
    public partial class articleClass : DbHelper {
        public string ClassTree,_tmp;
        public Model.ArticleClass article = new Model.ArticleClass();
        protected void Page_Load(object sender, EventArgs e) {
            if (!IsPostBack) {
                ListBoxTree(0);
            }
            #region 添加
            if (Request["addButton"] != null) {
                if (string.IsNullOrEmpty(Request["form-field-select-2"])) {
                    article.cid = 0;
                } else {
                    article.cid = int.Parse(Request["form-field-select-2"]);
                }
                article.name = Request["nameClass"];
                article.paixu = int.Parse(Request["spinner1"]);

                int _success = article.Add();
                if (_success > 0) {
                    JsWindows("添加成功", "articleClass.aspx");
                }
            }
            #endregion

            #region 修改
            if (Request["editButton"] != null) {
                if (string.IsNullOrEmpty(Request["form-field-select-2"]) || Request["form-field-select-2"] == "0") {
                    JsWindows("请选择需要修改的分类");
                    return;
                }
                article.id = int.Parse(Request["form-field-select-2"]);
                article.name = Request["nameClass"];
                article.paixu = int.Parse(Request["spinner1"]);

                bool _over = article.Update();
                if (_over == true) {
                    JsWindows("更新完成", "articleClass.aspx");
                }
            }
            #endregion

            #region 删除
            if (Request["delButton"] != null) {
                bool _over = article.Delete(int.Parse(Request["form-field-select-2"]));
                if (_over == true) {
                    JsWindows("删除完成", "articleClass.aspx");
                }
            }
            #endregion
        }

        private void ListBoxTree(int _id) {
            DataTable dt = article.GetList("cid="+_id+"").Tables[0];
            foreach (DataRow dr in dt.Rows) {
                ClassTree += "<option value='" + dr[0] + "'  style='line-height:29px;'>" + _tmp + dr[2] + "，排序号为：" + dr["paixu"] + "</option>";
                _tmp += "─┴";
                ListBoxTree(int.Parse(dr[0].ToString()));
                _tmp = _tmp.Substring(0, _tmp.Length - 2);
            }
        }
    }
}