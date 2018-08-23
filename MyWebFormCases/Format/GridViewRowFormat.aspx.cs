using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebFormCases.Format
{
    public partial class GridViewRowFormat : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
         
            if (e.Row.RowIndex > 0)
            {
                GridViewRow row = GridView1.Rows[e.Row.RowIndex];
                GridViewRow previousRow = GridView1.Rows[e.Row.RowIndex - 1];
                //row.Cells[0].RowSpan
            }
        }
    }
}