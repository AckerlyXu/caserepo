using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.gridView2
{
    public partial class gridviewValidation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int[] arr = new int[] { 1,1,1,1 };
                GridView1.DataSource = arr;
                GridView1.DataBind();
            }
           
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
               GridView b= e.Row.FindControl("GridView2") as GridView;
                int[] arr = new int[] { 1 };
                b.DataSource = arr;
                b.DataBind();
            }
        }
    }
}