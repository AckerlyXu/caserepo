using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.gridview3
{
    public partial class AggregateMutiColumns : System.Web.UI.Page
    {
        private static string constr = ConfigurationManager.ConnectionStrings["NorthwindConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                using (SqlDataAdapter adapter = new SqlDataAdapter("SELECT [ProductName], [QuantityPerUnit], [UnitPrice], [UnitsInStock] FROM [Products]", constr))
                {

                    
                    DataTable table = new DataTable();
                    adapter.Fill(table);
                    //add a new column to show the sum
                    GridView1.Columns.Add( new BoundField
                    {
                        HeaderText = " (dynamic)",
                   
                    });
                }
            }
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
              
                Label label = e.Row.FindControl("UnitPrice") as Label;
                double unitPrice = Double.Parse(label.Text);   //if you use template, please get the control which contains the value and the then get the value.
                int unitInStock = int.Parse(e.Row.Cells[3].Text);//if you use boundfield , please use e.Row.Cells[index].Text to get the value
                e.Row.Cells[4].Text = (unitPrice + unitInStock).ToString();
            }
       

        }
    }
}