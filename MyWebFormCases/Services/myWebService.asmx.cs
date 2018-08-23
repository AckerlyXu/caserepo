using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Services;
using System.Web.Services;

namespace MyWebFormCases.Services
{
    /// <summary>
    /// Summary description for myWebService
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
     [System.Web.Script.Services.ScriptService]
    public class myWebService : System.Web.Services.WebService
    {

        [WebMethod]
        //如果AJAX通过GET方式访问该方法，必须设置 UseHttpGet属性的值为 true，否则报500错误。
      //  [ScriptMethod(UseHttpGet = true)]
        public string getData(string value)
        {
            if (value == "item1")
            {
                return "you select item1";
            }
            if (value == "item2")
            {
                return "you select item2";
            }
            return null;

        }
    }
}
