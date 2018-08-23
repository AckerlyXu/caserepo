using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.Format
{
    public partial class FormatNumberInGridView : System.Web.UI.Page
    {
        private static string constr = ConfigurationManager.ConnectionStrings["NorthwindConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
                
            {
           
                using (SqlDataAdapter adapter = new SqlDataAdapter("select * from cities", constr))
                {

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
               
                DataRowView data =e.Row.DataItem as DataRowView;
       
               e.Row.Cells[2].Text = ((long)data["City_1"] / 1000000).ToString("N0")+"mil";
                e.Row.Cells[3].Text = ((long)data["City_2"]  / 1000000).ToString("N0")+"mil";
                e.Row.Cells[4].Text = ((long)data["City_3"] / 1000000).ToString("N0")+"mil";
            }
        }
    }
  
}