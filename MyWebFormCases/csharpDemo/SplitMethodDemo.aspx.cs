using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.csharpDemo
{
    public partial class SplitMethodDemo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          string[] array= TextBox1.Text.Split(',');

           
            try
            {



                throw new Exception();
            }
            catch (Exception ex)
            {
                Response.Write(ex.StackTrace);
              
            }
        }
    }
}