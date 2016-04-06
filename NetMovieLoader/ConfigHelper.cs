using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;
using System.Text.RegularExpressions;



class ConfigHelper
{

    #region 操作其他配置文件

    public static void SaveConfig(string key, string value)
    {
        SaveConfig(key, value, "config.ini");
    }

    public static void SaveConfig(string key, string value, string fileName)
    {
        string path = AppDomain.CurrentDomain.BaseDirectory + "\\" + fileName;
        if (!File.Exists(path))
        {
            FileStream fs = File.Create(path);
            fs.Close();
        }
        StreamReader sr = new StreamReader(path);
        string text = sr.ReadToEnd();
        sr.Close();
        Regex regex = new Regex("[ ]*?" + key + "[ ]*?=.*?;[.\r\n]*");
        StreamWriter sw;
        if (regex.Match(text).Success)
        {
            text = regex.Replace(text, key + "=" + value + ";\r\n");
            sw = new StreamWriter(path);
        }
        else
        {
            text = key + "=" + value + ";\r\n";
            sw = new StreamWriter(path, true);
        }
        sw.Write(text);
        sw.Close();
    }
    public static string ReadConfig(string key)
    {
        return ReadConfig(key, "config.ini");
    }
    public static string ReadConfig(string key, string fileName)
    {
        string path = AppDomain.CurrentDomain.BaseDirectory + "\\" + fileName;
        if (!File.Exists(path))
        {
            FileStream fs = File.Create(path);
            fs.Close();
            return "";
        }
        StreamReader sr = new StreamReader(path);
        string text = sr.ReadToEnd();
        sr.Close();

        Regex regex = new Regex("[ ]*?" + key + "[ ]*?=(?<value>.*?);[.\r\n]*");
        Match match = regex.Match(text);
        if (match.Success)
        {
            return match.Groups["value"].Value;
        }
        return "";
    }

    #endregion
}

