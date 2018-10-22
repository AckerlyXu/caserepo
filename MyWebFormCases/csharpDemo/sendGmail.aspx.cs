using EASendMail;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.csharpDemo
{
    public partial class sendGmail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SmtpMail oMail = new SmtpMail("TryIt");
            SmtpClient oSmtp = new SmtpClient();

            // Your gmail email address
            oMail.From = "ackerlyx@gmail.com";

            // Set recipient email address
            oMail.To = "ackerlyx@gmail.com";

            // Set email subject
            oMail.Subject = "test email from gmail account";

            // Set email body
            oMail.TextBody = "this is a test email sent from c# project with gmail.";

            // Gmail SMTP server address
            SmtpServer oServer = new SmtpServer("smtp.gmail.com");

            // If you want to use direct SSL 465 port,
            // please add this line, otherwise TLS will be used.
            // oServer.Port = 465;

            // set 587 TLS port;
            oServer.Port = 587;

            // detect SSL/TLS automatically
            oServer.ConnectType = SmtpConnectType.ConnectSTARTTLS;

            // Gmail user authentication
            // For example: your email is "gmailid@gmail.com", then the user should be the same
            oServer.User = "ackerlyx@gmail.com";
            oServer.Password = "yourpassword";

            try
            {
                Response.Write("start to send email over SSL ...");
                oSmtp.SendMail(oServer, oMail);
                Response.Write("email was sent successfully!");
            }
            catch (Exception ep)
            {
               
                Response.Write("failed to send email with the following error:");
                Response.Write(ep.Message);
            }
        }
    }
}