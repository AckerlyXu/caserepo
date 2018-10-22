using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.csharpDemo
{
    public partial class MailTest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            //String[] abc=  "abc,a".Split(new char[] {',' }, StringSplitOptions.RemoveEmptyEntries);
            //  try
            //  {
            //      MailAddress m = new MailAddress("ackerlygmail.com");
            //      Response.Write("it is vaild");
            //  }
            //  catch (Exception)
            //  {

            //      Response.Write("it is not valid");
            //  }   

            MailMessage mail = new MailMessage();
            //set the addresses
            mail.From = new MailAddress("ackerlyx@gmail.com");
            mail.To.Add("ackerlyx@gmail.com");
            //set the content
            mail.Subject = "This is an email";
            mail.Body = "this is the body content of the email.";
            //send the message
            SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587);
            smtp.EnableSsl = true;
            smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
            //to authenticate we set the username and password properites on the SmtpClient
            smtp.Credentials = new NetworkCredential("ackerlyx@gmail.com", "sishen1994");//no need to mention here?
            smtp.Send(mail);
        }
    }
}