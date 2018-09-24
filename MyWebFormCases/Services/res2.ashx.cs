using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MyWebFormCases.Services
{
    /// <summary>
    /// Summary description for res2
    /// </summary>
    public class res2 : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            context.Response.Write("<div style='background:red;'>the second page</div>");
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