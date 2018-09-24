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
                using (SqlDataAdapter adapter = new SqlDataAdapter("select * from aggregate", constr))
                {


  
                    DataTable table = new DataTable();
                    adapter.Fill(table);
                    GridView2.DataSource = table;
                    GridView2.DataBind();


                }
            }

        }
    }
}