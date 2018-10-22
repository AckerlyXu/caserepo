using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.gridView2
{
    public partial class AddOneRowToGridView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataView dvsqllist1 = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
            DataTable tablelist1 = dvsqllist1.Table;
            SqlDataSource1.DataBind();
            DataTable dt = new DataTable();
            DataColumn column = new DataColumn();
            dt.Columns.Add(new DataColumn("Selected", typeof(bool))); //this will show checkboxes
            dt.Columns.Add("id_aluno", typeof(string));
            dt.Columns.Add("Nome", typeof(string));
            foreach (DataRow row in tablelist1.Rows)
            {
                DataRow row1 = dt.NewRow();
                row1[1] = row["Name"].ToString();
                row1[2] = row["City"].ToString();

                dt.Rows.Add(row1);
            }
           
            
            GridView1.DataSource = dt;
            GridView1.DataBind();
            GridViewRow row2 = new GridViewRow(-1, -1, DataControlRowType.EmptyDataRow, DataControlRowState.Normal);
            TableCell cell = new TableCell();
            cell.Text = "cell1";
            // cell.Attributes.Add("colspan", "3");
            row2.Cells.Add(cell);
            cell = new TableCell();
            cell.Text = "cell2";
            row2.Cells.Add(cell);
            cell = new TableCell();
            cell.Text = "cell3";
            row2.Cells.Add(cell);

            GridView1.Controls[0].Controls.Add(row2); 
        }
    }
}