using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.gridView2
{
    public partial class ShowAggregatedData : System.Web.UI.Page
    {
        private static string constr = ConfigurationManager.ConnectionStrings["UserItemDbContext"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                using (SqlDataAdapter adapter = new SqlDataAdapter("aggre_location", constr))
                {

                  
                    adapter.SelectCommand.CommandType = CommandType.StoredProcedure;
                    DataTable table = new DataTable();
                    adapter.Fill(table);
                    GridView1.DataSource = table;
                    GridView1.DataBind();


                }
               
            }

        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                if (e.Row.Cells[1].Text == "Sub Total"&&e.Row.Cells[0].Text!="Grand Total")
                {
                    e.Row.Cells[0].Text = "";
                    e.Row.Attributes.Add("style", "background-color:#F1234F");
                }
                if(e.Row.Cells[0].Text == "Grand Total")
                {
                    e.Row.Attributes.Add("style", "background-color:#FFF11F");
                    e.Row.Cells[0].Text = "";
                    e.Row.Cells[1].Text = "Grand Total";
                }
            }

        }
    }
}