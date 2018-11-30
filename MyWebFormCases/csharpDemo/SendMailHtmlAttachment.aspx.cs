using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.csharpDemo
{
    public partial class SendMailHtmlAttachment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //使用指定的邮件地址初始化MailAddress实例
            MailAddress maddr = new MailAddress("ackerlyx@gmail.com");
            //初始化MailMessage实例
            MailMessage myMail = new MailMessage();


            //向收件人地址集合添加邮件地址
          
                    myMail.To.Add("ackerlyx@gmail.com");


          
            myMail.From = maddr;

            myMail.Subject = "test";

            myMail.SubjectEncoding = Encoding.UTF8;

       
            myMail.Body = "<div style='color:red'>hello this is a test</div>";

        
            myMail.BodyEncoding = Encoding.UTF8;

            myMail.Priority = MailPriority.High;

            myMail.IsBodyHtml = true;
            
         
                    Attachment attachFile = null;
                 
                        attachFile = new Attachment(Server.MapPath("/WebForm1.aspx"));
                        myMail.Attachments.Add(attachFile);
                    
                
          
            SmtpClient smtp = new SmtpClient();
            smtp.EnableSsl = true; 
         
            smtp.Credentials = new System.Net.NetworkCredential("ackerlyx@gmail.com", "sishen1994");


         
            smtp.Host = "smtp.gmail.com";

            smtp.Port = 587;
     
            smtp.Send(myMail);
               


        }
    
    }
}