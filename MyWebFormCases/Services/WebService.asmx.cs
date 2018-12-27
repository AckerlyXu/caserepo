using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.Services;

namespace MyWebFormCases.Services
{
    /// <summary>
    /// Summary description for WebService
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
     [System.Web.Script.Services.ScriptService]
    public class WebService : System.Web.Services.WebService
    {

        [WebMethod]
        public Category[] GetCategories()
        {
           
            Category[] categories = new Category[] {

                new Category{No=1,Code="hello",Description="product",Months=11},
                  new Category{No=25,Code="toy",Description="dtoy",Months=9},
                    new Category{No=31,Code="computer",Description="goodcomputer",Months=2},
                      new Category{No=86,Code="mobile",Description="it's good",Months=5},
                        new Category{No=67,Code="apple",Description="fruit",Months=7},
            };
            Thread.Sleep(3000);
            return categories;
        }

       
    }
    public class Category
    {
        public int No { get; set; }
        public string Code { get; set; }
        public string  Description { get; set; }
        public int Months { get; set; }
    }
}
