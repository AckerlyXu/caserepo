using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace MyWebFormCases.FileDemo
{
    public partial class UserStreamReader : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           StreamReader myFile = new StreamReader(Server.MapPath("/FileDemo/UserStreamReader.aspx"));
            string stringtoRead = myFile.ReadToEnd();
         // Displays nothing, but no error
        }
    }
}