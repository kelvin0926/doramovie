using System;
using System.Collections.Generic;
using System.Data;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Xml;
using DataBase;
namespace DoraMovie.about {
    public partial class contace : System.Web.UI.Page {
        public Model.about aboutModel;
        protected void Page_Load(object sender, EventArgs e) {
            aboutModel = new Model.about();
            if (Request["submit"] != null) {
                string name = Request["full_name"];
                string email = Request["email"];
                string content = Request["content"];


            }
        }

        /// <summary>
        /// 发送邮件
        /// </summary>
        /// <param name="toEMail"></param>
        /// <returns></returns>
        public string sendEmail(string title, string content, string toEMail) {
            try {
                XmlDocument xml = new XmlDocument();
                xml.Load(Server.MapPath("Mail.config"));
                string Host = xml.SelectSingleNode("Email/SMTP").InnerText;
                int Post = int.Parse(xml.SelectSingleNode("Email/SMTP_POST").InnerText);
                string User = xml.SelectSingleNode("Email/Email_User").InnerText;
                string Pwd = xml.SelectSingleNode("Email/Email_Pwd").InnerText;
                int SSL = int.Parse(xml.SelectSingleNode("Email/SSL").InnerText);

                SmtpClient smtp = new SmtpClient();
                smtp.Host = Host;
                smtp.Port = Post;
                smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
                smtp.Credentials = new System.Net.NetworkCredential(User, Pwd);
                if (SSL == 1)
                    smtp.EnableSsl = true;
                else
                    smtp.EnableSsl = false;

                MailMessage mm = new MailMessage(User, toEMail);
                mm.Subject = title;
                mm.Body = content;
                mm.SubjectEncoding = System.Text.Encoding.Default;
                mm.IsBodyHtml = true;
                smtp.Timeout = 20000;
                smtp.Send(mm);
                return "";
            } catch (Exception error) {
                return error.Message;
            }
        }

    }
}