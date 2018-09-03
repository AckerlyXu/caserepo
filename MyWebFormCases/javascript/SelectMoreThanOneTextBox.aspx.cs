using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.javascript
{
    public partial class SelectMoreThanOneTextBox : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int[] arr = new int[] { 1, 2, 3, 4, 5 };
                GridView1.DataSource = arr;
                GridView1.DataBind();

            }
        }
    }
}