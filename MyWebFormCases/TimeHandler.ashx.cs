using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebFormCases
{
    /// <summary>
    /// Summary description for TimeHandler
    /// </summary>
    public class TimeHandler : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/html";
            
            
            context.Response.Write(DateTime.Now.ToString());
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}