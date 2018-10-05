using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.gridView2
{
    public partial class RowDataBoundSum : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
       int  sum = 0;
        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
              string jul=  DataBinder.Eval(e.Row.DataItem, "Jul").ToString();
                if (jul != "-")
                {
                    sum += int.Parse(jul);
                }
            }

            //if (e.Row.RowIndex == GridView1.Rows.Count )
            //{
            //    Label label = GridView1.HeaderRow.FindControl("JulyTotal") as Label;
            //    label.Text = sum.ToString();
            //    label.Visible = true;
            //}
        }

        protected void GridView1_DataBound(object sender, EventArgs e)
        {
            Label label = GridView1.HeaderRow.FindControl("JulyTotal") as Label;
            label.Text = sum.ToString();
            label.Visible = true;
        }
    }
}