using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.csharpDemo
{
    public partial class MyAttributeCheck : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TestAttribute(new MyDto());
        }

        public static void TestAttribute(Object obj)
        {
            var t = obj.GetType();
            var properties = t.GetProperties();
            foreach (var item in properties)
            {
                if (item.IsDefined(typeof(NeedCheckAttribute), false))
                {
                    var attribute = item.GetCustomAttributes(typeof(NeedCheckAttribute), false).First();
                   bool flag= (bool)attribute.GetType().GetProperty("needCheck").GetValue(attribute);
                    HttpContext.Current.Response.Write(item.Name+":"+flag+"<br/>");
                }
            }
        }
    }
}