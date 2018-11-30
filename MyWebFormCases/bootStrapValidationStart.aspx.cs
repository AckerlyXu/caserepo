using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases
{
    public partial class bootStrapValidationStart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (1 == 1)
            {
                throw new Exception();
            }
        }
    }
}