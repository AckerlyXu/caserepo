using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;

namespace MyWebFormCases.Services
{
    /// <summary>
    /// Summary description for upload
    /// </summary>
    public class upload : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
         HttpFileCollection con=   context.Request.Files;
            context.Response.Write(con.Count);
      
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