using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.csharpDemo
{
    public partial class sendMailToLoalDirectory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var smtpClient = new SmtpClient();
            var message = new MailMessage("no-reply@suteki.co.uk", "mike@suteki.co.uk")
            {
                Subject = "The subject",
                Body = "The body of the message"
            };
            smtpClient.Send(message);
        }
    }
}