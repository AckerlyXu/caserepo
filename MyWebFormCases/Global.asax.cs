using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;
using WebFormCases.Models;

namespace WebFormCases
{
    public class Global : System.Web.HttpApplication
    {
        protected void Application_Start(object sender, EventArgs e)
        {
            
        }
        protected void Application_BeginRequest(object sender,EventArgs e)
        {
            //string text = StringToUnicode("text");
            //HttpContext.Current.RewritePath("/crossPages/PageToGo.aspx?text="+Server.UrlEncode(   "这是我的text"));
      

        }
        
        protected void Application_PostMapRequestHandler(object sender,EventArgs e)
        {

           
        }
        protected void Application_Error(object sender, EventArgs e)
        {
        //    Exception ex = Server.GetLastError();
           
        // string url=  Request.RawUrl;
        }
    }
}