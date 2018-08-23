using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.gridview
{
    public partial class SerialNumberRecord : System.Web.UI.Page
    {

        private int count = 1;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {

            if (e.Row.RowType == DataControlRowType.DataRow)
            {
               
                if (DataBinder.Eval(e.Row.DataItem, "ContactName") != null)
                {

                    if ((DataBinder.Eval(e.Row.DataItem, "ContactName") as string).StartsWith("A"))
                    {

                        e.Row.Visible = false;
                    }
                    else
                    {
                        (e.Row.FindControl("Label1") as Label).Text = count.ToString();
                        count++;
                    }
                }


            }
        }
    }
}