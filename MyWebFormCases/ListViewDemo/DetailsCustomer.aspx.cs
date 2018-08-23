using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.ListViewDemo
{
    public partial class DetailsCustomer : System.Web.UI.Page
    {
        public string url = ConfigurationManager.ConnectionStrings["NorthwindConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
      string customerId=      Request["id"];
            string sql = "select * from customers where customerId=@id";
            //get the details from database through id passed by the previous page
            using (SqlDataAdapter adapter = new SqlDataAdapter(sql, url))
            {
                SqlParameter parameter = new SqlParameter("id", System.Data.SqlDbType.NChar, 5) {Value=customerId };

                adapter.SelectCommand.Parameters.Add(parameter);
                DataTable table = new DataTable();
                adapter.Fill(table);
                DetailsView2.DataSource = table;
                DetailsView2.DataBind();
            }
        }
    }
}