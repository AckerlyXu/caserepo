using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.javascriptTwo
{
    public partial class ajaxSubmit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        [WebMethod]
        public static Dictionary<string,string> GetData(Dictionary<string,string> data)
        {
            return data;
        }
    }
}