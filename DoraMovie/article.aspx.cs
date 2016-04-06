using System;
using System.Collections.Generic;
using System.Web;
using System.Data;
using System.Text;
using System.IO;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataBase;
using Lucene.Net.Analysis;
using Lucene.Net.Analysis.PanGu;

namespace DoraMovie
{
    public partial class article : System.Web.UI.Page
    {
        public string _title, _key, _description, _pic, downURL, upNews, NextNews, _email, _head, _addtime, _tip;
        public int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            string _url = Request.Url.AbsoluteUri.ToString();

            if (!IsPostBack)
            {
                id = int.Parse(DbHelper.q("id"));
                DataTable dt = DbHelper.ExecuteTable(CommandType.Text, "select * from movies where  enable and  id=" + id + "", null);
                if (dt == null || dt.Rows.Count == 0)
                {
                    Response.Redirect("~/404.html");
                }
                content.DataSource = dt;
                content.DataBind();

                // SEO
                _head = dt.Rows[0]["zhaiyao"].ToString().Length > 100 ? dt.Rows[0]["zhaiyao"].ToString().Remove(100) : dt.Rows[0]["zhaiyao"].ToString();
                _title = dt.Rows[0]["title"].ToString().Replace("【", "[").Replace("】", "]");
                Analyzer anal = new PanGuAnalyzer();//使用盘古分词
                StringReader sb = new StringReader(_title);
                TokenStream ts = anal.ReusableTokenStream("", sb);
                Token t = null;
                while ((t = ts.Next()) != null)
                {
                    _key += t.TermText() + ",";
                    // 超链接锚文本分词
                    _tip += "<a href='/class-" + t.TermText() + "'>" + t.TermText() + "</a> | ";
                }
                _key += Application["title"].ToString();
                if (string.IsNullOrEmpty(DataBase.DbHelper.SplitString(dt.Rows[0]["body"].ToString(), "介,剧情", 50)))
                {
                    _description = dt.Rows[0]["title"].ToString();
                }
                else
                {
                    _description = dt.Rows[0]["title"].ToString() + DataBase.DbHelper.SplitString(dt.Rows[0]["body"].ToString(), "介,剧情", 50);
                }
                downURL = dt.Rows[0]["downURL"].ToString();
                _pic = DbHelper.getImageUrl(dt.Rows[0]["body"].ToString());
                _addtime = dt.Rows[0]["addtime"].ToString();

                #region 上一篇下一篇
                DataTable dt_upNews = DbHelper.ExecuteTable(CommandType.Text, "select id,title from movies where id < '" + id + "' order by id desc limit 0,1", null);
                if (dt_upNews.Rows.Count > 0)
                {
                    upNews = string.Format("<a href='/movie/{0}.html' class='article-more-prev'><i class='nav-left'></i>{1}</a>", dt_upNews.Rows[0]["id"].ToString(), dt_upNews.Rows[0]["title"].ToString());
                }
                else
                {
                    upNews = string.Format("<a href=\"{0}\" class='article-more-prev'><i class='nav-left'></i>>前面已经没有文章咯^_^</a>", Application["PageUrl"]);
                }
                DataTable dt_NextNews = DbHelper.ExecuteTable(CommandType.Text, "select  id,title from movies where id > '" + id + "' order by id desc limit 0,1", null);
                if (dt_NextNews.Rows.Count > 0)
                {
                    NextNews = string.Format("<a href='/movie/{0}.html' class='article-more-next'><i class='nav-right'></i>{1}</a>", dt_NextNews.Rows[0]["id"].ToString(), dt_NextNews.Rows[0]["title"].ToString());
                }
                else
                {
                    NextNews = string.Format("<a href=\"{0}\" class='article-more-next'><i class='nav-right'></i>>后面已经没有文章咯^_^</a>", Application["PageUrl"]);
                }
                #endregion

                #region 更新文章访问次数
                DbHelper.ExecuteNonQuery(CommandType.Text, "update movies set Look=Look+1 where id=" + id + "", null);
                #endregion
            }
        }
    }
}