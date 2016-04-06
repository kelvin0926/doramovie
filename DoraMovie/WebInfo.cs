using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;

namespace DoraMovie
{
    public class WebInfo
    {
        public static string ServerPath
        {
            get
            {
                Regex regex = new Regex("/");

                MatchCollection matches = null;
                if (HttpContext.Current.Request.ApplicationPath == "/")
                    matches = regex.Matches(HttpContext.Current.Request.Path);
                else
                    matches = regex.Matches(HttpContext.Current.Request.Path.ToLower().Replace(HttpContext.Current.Request.ApplicationPath.ToLower(), ""));
                string serverPath = "";
                for (int i = 0; i < matches.Count - 1; i++)
                {
                    serverPath += "../";
                }
                if (HttpContext.Current.Request.ApplicationPath == "/") return serverPath + "/";
                else return (string.IsNullOrEmpty(serverPath) ? HttpContext.Current.Request.ApplicationPath : serverPath) + "/";
            }
        }
    }
}