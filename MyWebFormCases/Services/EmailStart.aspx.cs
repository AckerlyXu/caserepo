using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.Services
{
    public partial class EmailStart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MailMessage message = new MailMessage();
            SmtpClient SmtpServer = new SmtpClient("smtp.wicresoft.com");
            message.From = new MailAddress("ackerlyx@wicresoft.com");
            message.Subject = "subject";
            message.Body = "body";
            message.To.Add("ackerlyx@wicresoft.com");
            SmtpServer.Port = 587;
            SmtpServer.Credentials = new System.Net.NetworkCredential("Ackerly Xu", "saiyaren1994,./");
            SmtpServer.EnableSsl = true;
            SmtpServer.Send(message);
        }
    }
}