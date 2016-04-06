using System;
using System.Collections.Generic;
using System.Data;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataBase;
namespace DoraMovie.admin
{
    public partial class youlianEdit : System.Web.UI.Page
    {
        public Model.friendsite youlianModel;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(DbHelper.q("id")))
            {
                youlianModel = new Model.friendsite(int.Parse(DbHelper.q("id")));
            }
            else
            {
                youlianModel = new Model.friendsite();
            }

            if (Request["submitButton"] != null)
            {
                youlianModel.title = Request["title"];
                youlianModel.addtime = DateTime.Now;
                youlianModel.url = Request["url"];
                if (string.IsNullOrEmpty(youlianModel.title))
                {
                    DbHelper.JsWindows("网站名称不能为空！");
                    return;
                }
                else if (string.IsNullOrEmpty(youlianModel.url))
                {
                    DbHelper.JsWindows("网站链接不能为空！");
                    return;
                }
                youlianModel.isPast = int.Parse(Request["ispast"]);
                youlianModel.qq = Request["qq"];
                try
                {
                    if (DbHelper.q("Action") == "Edit")
                    {
                        youlianModel.id = int.Parse(DbHelper.q("id"));
                        if (youlianModel.Update() == true)
                        {
                            DbHelper.JsWindows("更新完成", "youlianManage.aspx");
                        }
                        else
                        {
                            DbHelper.JsWindows("保存失败！");
                        }
                    }
                    else
                    {
                        if (youlianModel.Add() > 0)
                        {
                            DbHelper.JsWindows("添加成功", "youlianManage.aspx");
                        }
                        else
                        {
                            DbHelper.JsWindows("保存失败！");
                        }
                    }
                }
                catch (Exception ex)
                {
                    DbHelper.JsWindows("添加失败！\r\n" + ex.Message, "youlianManage.aspx");
                }
            }
        }
    }
}