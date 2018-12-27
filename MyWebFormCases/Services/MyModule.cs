using System;
using System.Web;

namespace MyWebFormCases.Services
{
    public class MyModule : IHttpModule
    {
        /// <summary>
        /// You will need to configure this module in the Web.config file of your
        /// web and register it with IIS before being able to use it. For more information
        /// see the following link: https://go.microsoft.com/?linkid=8101007
        /// </summary>
        #region IHttpModule Members

        public void Dispose()
        {
            //clean-up code here.
        }

        public void Init(HttpApplication context)
        {
            // Below is an example of how you can handle LogRequest event and provide 
            // custom logging implementation for it
            //context.EndRequest += MyOnEndRequest;
           // context.Error += MyOnEndRequest;
            context.PreSendRequestHeaders += MyOnEndRequest;
            context.BeginRequest += MyBeginRequest;

        }
        public void MyBeginRequest(Object source, EventArgs e)
        {
            string addr = HttpContext.Current.Request.UserHostAddress;
        }
        #endregion

        public void MyOnEndRequest(Object source, EventArgs e)
        {
            HttpContext.Current.Response.Headers.Remove("Server");
        }
    }
}
