using System;
using System.Collections.Generic;
using System.Linq;
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

          String[] abc=  "abc,a".Split(new char[] {',' }, StringSplitOptions.RemoveEmptyEntries);
            try
            {
                MailAddress m = new MailAddress("ackerlygmail.com");
                Response.Write("it is vaild");
            }
            catch (Exception)
            {

                Response.Write("it is not valid");
            }   
        }
    }
}