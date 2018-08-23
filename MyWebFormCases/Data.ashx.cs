using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MyWebFormCases
{
    /// <summary>
    /// Summary description for Data
    /// </summary>
    public class Data : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
           context.Response.ContentType = "text/xml";
            System.Web.Script.Serialization.JavaScriptSerializer javaScriptSerializer = new System.Web.Script.Serialization.JavaScriptSerializer();
            context.Response.Write("{\"name\":\"123\"}");
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