
using MyWebFormCases.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Web;
using System.Web.Compilation;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.csharpDemo
{
    public partial class ClassesAndProperties : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
         List<Type> classes=   typeof(Category).Assembly.GetTypes().Where(t=>t.Namespace== "MyWebFormCases.Models").ToList() ;
            
            foreach (Type clazz in classes)
            {
                Response.Write(clazz.FullName + "<br/>");
                foreach (PropertyInfo  prop in clazz.GetProperties() )
                {
                    Response.Write(prop.Name+",");
                }
                Response.Write("<br/><br/>");
            }
        }
    }
}