using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace MyWebFormCases.Services
{
    /// <summary>
    /// Summary description for ArrayData
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
     [System.Web.Script.Services.ScriptService]
    public  class ArrayData : System.Web.Services.WebService
    {

        [WebMethod]
        public  Employ[] GetData()
        {
            HttpContext.Current.Response.ContentType = "text/html";
            Employ[]  arr = new Employ[]
            {
              new Employ{FName="first",EmpId=1},
              new Employ{FName="second",EmpId=2},
              new Employ{FName="third",EmpId=3}
            };
            return arr;
          
        }

        
    }

    public class Employ
    {
        public int EmpId { get; set; }
        public string FName { get; set; }
      
    }
}
