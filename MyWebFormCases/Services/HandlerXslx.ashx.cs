using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MyWebFormCases.Services
{
    /// <summary>
    /// Summary description for HandlerXslx
    /// </summary>
    public class HandlerXslx : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "application/vnd.ms-excel";
            try
            {
                if (HttpContext.Current.Request.UserHostAddress == "::1")
                {
                    context.Response.WriteFile(HttpContext.Current.Request.MapPath(context.Request.Path));
                }
                else
                {
               
                }
            
                
            }
            catch (Exception)
            {

                throw;
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