using System;
using System.Collections.Generic;
using System.IO;
using System.Web;
using System.Xml;


namespace DoraMovie.config {
    public class AppClass {
        HttpContext Context = HttpContext.Current;
        public AppClass() {
            XmlDocument xml = new XmlDocument();
            string file = AppDomain.CurrentDomain.BaseDirectory + "config/globla.config";
            try
            {
                if (!File.Exists(file)) File.Create(file);
            }
            catch 
            {
                
            }
            xml.Load(file);
            Context.Application["title"] = xml.SelectSingleNode("PageSetting/title").InnerText;
            Context.Application["url"] = xml.SelectSingleNode("PageSetting/url").InnerText;
            Context.Application["smallUrl"] = xml.SelectSingleNode("PageSetting/smallUrl").InnerText;
            Context.Application["keyword"] = xml.SelectSingleNode("PageSetting/keyword").InnerText;
            Context.Application["description"] = xml.SelectSingleNode("PageSetting/description").InnerText;
            Context.Application["aboutAD"] = xml.SelectSingleNode("PageSetting/aboutAD").InnerText;
            Context.Application["aboutMe"] = xml.SelectSingleNode("PageSetting/aboutMe").InnerText;
            Context.Application["AddTeam"] = xml.SelectSingleNode("PageSetting/AddTeam").InnerText;
            Context.Application["weixin"] = xml.SelectSingleNode("PageSetting/weixin").InnerText;
            Context.Application["tencent"] = xml.SelectSingleNode("PageSetting/tencent").InnerText;
            Context.Application["weibo"] = xml.SelectSingleNode("PageSetting/weibo").InnerText;
            Context.Application["Copyright"] = xml.SelectSingleNode("PageSetting/Copyright").InnerText;
        }

    }

}