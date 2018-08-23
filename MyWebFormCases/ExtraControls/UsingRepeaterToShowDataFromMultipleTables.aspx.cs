using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.ExtraControls
{
    public partial class UsingRepeaterToShowDataFromMultipleTables : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int[] arr = new int[] { 1, 3, 2, 2, 2, 2, 2, 2, 2, 2 };
                Repeater1.DataSource = arr;
                Repeater1.DataBind();
            }
        }
    }
}