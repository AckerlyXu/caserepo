using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MyWebFormCases.Services
{
    /// <summary>
    /// Summary description for res1
    /// </summary>
    public class res1 : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            context.Response.Write("<div style='background:red;'>the first page</div>");
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