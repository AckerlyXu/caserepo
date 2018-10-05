using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.json
{
    public partial class JTokenExe : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string text = Label1.Text;
       //    text= text.Replace("\r\n","");
      //JToken token=      JToken.Parse(text);
      //    token.SelectToken("orders[0]")
           //token.Children
        }
    }
}