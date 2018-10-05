using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.gridView2
{
    public partial class WithObjectDataSource : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
         GridViewRow row=   GridView1.Rows[GridView1.EditIndex];
         TextBox box=   row.FindControl("idEdit") as TextBox;
        }
    }
}