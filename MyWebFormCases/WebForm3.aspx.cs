using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases
{
    public partial class WebForm3 : System.Web.UI.Page
    {
      public string Text = "'Apple',Banana'";
        protected void Page_Load(object sender, EventArgs e)
        {
            //  Response.Write(HttpUtility.UrlDecode("http://localhost:8080/path/testpath/IfimoJuvMT8j9K0%2bFmNiliPEBce%2bzgfVjLVU4jw09L48EepJOtRVisq5FJfipuGTaTmbTTIAlPomEZsWDRgWN6EosF4I9grM9gQS6Smw9xT%2fgz2XjKB%2faYCxP7Gk1fZc.aspx"));
            Response.Write(Request["input1"]);
        }
    }
}