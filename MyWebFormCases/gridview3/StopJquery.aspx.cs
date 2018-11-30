using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.gridview3
{
    public partial class StopJquery : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable table = new DataTable();
                table.Columns.Add(new DataColumn("LastName"));
                table.Columns.Add(new DataColumn("FirstName"));
                table.Columns.Add(new DataColumn("AccountName"));
                table.Rows.Add("user1", "user1", "user1");
                table.Rows.Add("user2", "user2", "user2");
                table.Rows.Add("user3", "user4", "user3");
                table.Rows.Add("user4", "user4", "user4");
                table.Rows.Add("user5", "user5", "user5");
                
                GridView2.DataSource = table;
                GridView2.DataBind();
            }
        }
        protected void GridView2_Sorting(object sender, GridViewSortEventArgs e)
        {
            //ModalPopupExtender3.Show();
        }

        protected void GridMail_RowDataBound(object sender, GridViewRowEventArgs e)
        {

            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                string managername = e.Row.Cells[2].Text;
           
                e.Row.Attributes.Add("ondblclick", "GetGridValue('" + managername + "')");


            }
        }
    }
}