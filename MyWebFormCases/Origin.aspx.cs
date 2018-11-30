using MyWebFormCases.Utils;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases
{
    public partial class Origin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
     
            AssemblyName[] names = typeof(ImageUtil).Assembly.GetReferencedAssemblies();
            foreach (AssemblyName item in names)
            {
                Response.Write(item.FullName+"<br/>");
            }
        }
    }
}