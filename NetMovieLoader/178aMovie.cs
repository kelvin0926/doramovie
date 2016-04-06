using System;
using System.Collections.Generic;
using System.Drawing;
using System.Drawing.Imaging;
using System.IO;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;

namespace NetMovieLoader
{
    class _178aMovie
    {
        /// <summary>
        /// 抓取网页时发生
        /// </summary>
        public event CatchProgressChanged CatchProgressChanged;




        public IList<MovieModel> GetModel(string url)
        {
            if (string.IsNullOrEmpty(url)) return null;

            List<MovieModel> list = new List<MovieModel>();


            //当前页码
            int pageIndex = 1;
            Regex pageRegex = new Regex("p-(?<pageIndex>\\d+)[.]html$");
            Match pageMatch = pageRegex.Match(url);
            if (pageMatch.Success)
            {
                string strPageIndex = pageMatch.Groups["pageIndex"].Value;
                int.TryParse(strPageIndex, out pageIndex);
                if (pageIndex <= 0)
                    pageIndex = 1;
            }
            else
            {
                if (url.IndexOf(".html") > -1)
                {
                    url = url.Substring(0, url.IndexOf(".html")) + "-p-1.html";
                }
            }
            //当前页码End
            int totalPage = 1;
            bool first = true;
            double totalCount = 18;


            if (CatchProgressChanged != null)
                CatchProgressChanged("开始抓取..", 0, 0);


            Regex introRegex = new Regex("<div class=\"tab-jq\">(?<Intro>.*?)</div>", RegexOptions.Singleline);
            //for (; pageIndex <= totalPage; pageIndex++)
            {
                url = url.Replace("-p-" + (pageIndex - 1), "-p-" + pageIndex);
                Uri uri = new Uri(url);


                try
                {
                    string htmlStr = NetHelper.GetHtmlStr(url, Encoding.UTF8);
                    if (CatchProgressChanged != null)
                        CatchProgressChanged("正在解析数据..", 0, totalCount);

                    #region 总条数
                    //if (first)
                    //{
                    //    //总条数
                    //    Regex totalCountRegex = new Regex("共(?<totalCount>\\d+)部");
                    //    Match totalCountMatch = totalCountRegex.Match(htmlStr);
                    //    if (totalCountMatch.Success)
                    //    {
                    //        string strTotalCount = totalCountMatch.Groups["totalCount"].Value;
                    //        double.TryParse(strTotalCount, out totalCount);
                    //        if (totalCount == 0) totalCount = 18;
                    //    }
                    //    //总条数End
                    //    totalPage = (int)Math.Ceiling(totalCount / 18);
                    //}
                    #endregion


                    Regex movieRegex = new Regex("<a class=\"link-hover\" href=\"(?<url>.*?)\" title=\"(?<title>.*?)\"><img[^>]+src\\s*=\\s*['\"](?<img>[^'\"]+)['\"][^>]*><span[^>]+>.*?</span><span class=\"lzbz\">.*?<p class=\"actor\">(?<starred>.*?)</p>", RegexOptions.Singleline);
                    MatchCollection movieMatches = movieRegex.Matches(htmlStr);
                    if (movieMatches.Count > 0)
                    {
                        int index = 1;
                        foreach (Match movieMatch in movieMatches)
                        {
                            if (CatchProgressChanged != null)
                                CatchProgressChanged("正在解析数据..", 1, totalCount);


                            MovieModel movie = new MovieModel();
                            movie.Id = index;
                            movie.Title = movieMatch.Groups["title"].Value;

                            if (list.Exists(m => m.Title == movie.Title)) continue;
                            //链接
                            movie.Url = uri.Scheme + "://" + uri.Host + movieMatch.Groups["url"].Value;
                            Uri movieUri = new Uri(movie.Url);
                            movie.Url = movie.Url + "play.html?" + movieUri.Segments[movieUri.Segments.Length - 1].Replace("/", "-0-1");
                            //主演
                            string starred = movieMatch.Groups["starred"].Value;
                            starred = "主演：" + starred.Replace("主演", "").Replace("主演：", "").Replace("主演:", "");


                            //图片
                            string imgUrl = movieMatch.Groups["img"].Value;
                            string fileName = NetHelper.SaveAsWebImg(imgUrl, movie.Title);
                            using (Image img = Image.FromFile(AppDomain.CurrentDomain.BaseDirectory + "Image\\" + fileName))
                            {
                                MemoryStream ms = new MemoryStream();
                                img.Save(ms, ImageFormat.Jpeg);
                                img.Dispose();
                                movie.Img = Image.FromStream(ms);
                                movie.ImgRelativePath = fileName.Replace(AppDomain.CurrentDomain.BaseDirectory, "");
                            }
                            //读取简介
                            string movieDetailHtmlStr = NetHelper.GetHtmlStr(movie.Url, Encoding.UTF8);
                            Match introMatch = introRegex.Match(movieDetailHtmlStr);
                            if (introMatch.Success)
                            {
                                string intro = string.Format("<p><img src=\"/images/image/{1}\" alt=\"{2}\" /></p><p>{3}</p><p>{0}</p>",
                                    introMatch.Groups["Intro"].Value,
                                    movie.ImgRelativePath,
                                    movie.Title,
                                    starred
                                    );
                                movie.Intro = intro;
                            }
                            //读取真实播放地址


                            list.Add(movie);
                            index++;
                            first = false;
                        }
                    }
                    else
                    {
                        if (CatchProgressChanged != null)
                            CatchProgressChanged("没有要解析的数据", 0, totalCount);
                    }
                }
                catch (Exception ex)
                {

                }
            }
            if (CatchProgressChanged != null)
                CatchProgressChanged("解析完成", totalCount, totalCount);
            return list;
        }
    }
}
