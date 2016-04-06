using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;

namespace NetMovieLoader
{
    public class NetHelper
    {
        /// <summary>
        /// 获取网页的HTML码
        /// </summary>
        /// <param name="url">链接地址</param>
        /// <param name="encoding">编码类型</param>
        /// <returns></returns>
        public static string GetHtmlStr(string url, Encoding encoding)
        {
            string htmlStr = "";
            if (!String.IsNullOrEmpty(url))
            {
                WebRequest request = WebRequest.Create(url);            //实例化WebRequest对象
                WebResponse response = request.GetResponse();           //创建WebResponse对象
                Stream datastream = response.GetResponseStream();       //创建流对象

                StreamReader reader = new StreamReader(datastream, encoding);
                htmlStr = reader.ReadToEnd();                           //读取数据
                reader.Close();
                datastream.Close();
                response.Close();
            }
            return htmlStr;
        }

        /// <summary>
        /// 下载网站图片
        /// </summary>
        /// <param name="picUrl"></param>
        /// <returns></returns>
        public static string SaveAsWebImg(string picUrl,string fileName)
        {
            string result = "";
            string path = AppDomain.CurrentDomain.BaseDirectory + "Image\\";  //目录
            try
            {
                if (!Directory.Exists(path)) Directory.CreateDirectory(path);
                if (!String.IsNullOrEmpty(picUrl))
                {
                    Random rd = new Random();
                    DateTime nowTime = DateTime.Now;
                    //string fileName = nowTime.Month.ToString() + nowTime.Day.ToString() + nowTime.Hour.ToString() + nowTime.Minute.ToString() + nowTime.Second.ToString() + rd.Next(1000, 1000000) + ".jpg";
                    fileName = fileName.Replace(":","_") + ".jpg";
                    if (!File.Exists(path + fileName))
                    {
                        WebClient webClient = new WebClient();
                        webClient.DownloadFile(picUrl, path + fileName );
                    }

                    result = fileName;
                }
            }
            catch(Exception ex) { }
            return result;
        }
    }
}
