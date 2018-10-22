using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.gridView2
{
    public partial class WithModalPopup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ArrayList list = new ArrayList();
                list.Add(new { Flag = "myflag" });
                GridView1.DataSource =list;
                GridView1.DataBind();
            }
        }

        protected void imgPrint_Command(object sender, CommandEventArgs e)
        {
            if (e.CommandName == "Print")
            {
                //get argument
                string arg = e.CommandArgument.ToString();

                //simulate data from database
                input1.Text = "input1's datafromDatabase";
                input2.Text = "input2's datafromDatabase";
                input3.Text = "input3's datafromDatabase";
                //show the model pop up
                ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "$('#myEditModal').modal('show')", true);
            }
        }
    }
}