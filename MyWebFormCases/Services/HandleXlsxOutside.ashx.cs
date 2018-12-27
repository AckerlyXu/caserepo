using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MyWebFormCases.Services
{
    /// <summary>
    /// Summary description for HandleXlsxOutside
    /// </summary>
    public class HandleXlsxOutside : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
         //   context.Response.ContentType = "application/vnd.ms-excel";
            if (HttpContext.Current.Request.UserHostAddress == "::1")
            {
                context.Response.WriteFile(@"D:\downloads\101.xlsx");
               
            }
           
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