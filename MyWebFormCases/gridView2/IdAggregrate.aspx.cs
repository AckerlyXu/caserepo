using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.gridView2
{
    public partial class IdAggregrate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.BindDummyRow();
            }
        }
        private void BindDummyRow()
        {
            DataTable dummy = new DataTable();
            dummy.Columns.Add("CustomerId");
            dummy.Columns.Add("Name");
            dummy.Columns.Add("Country");
            dummy.Rows.Add();
            gvCustomers.DataSource = dummy;
            gvCustomers.DataBind();
        }

        [WebMethod]
        public static string GetCustomers()
        {
            string query = "SELECT CustomerId, Name, Country FROM Customers";
            SqlCommand cmd = new SqlCommand(query);
            string Con = ConfigurationManager.ConnectionStrings["UserItemDbContext"].ConnectionString;
            using (SqlConnection con = new SqlConnection(Con))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter())
                {
                    cmd.Connection = con;
                    sda.SelectCommand = cmd;
                    using (DataSet ds = new DataSet())
                    {
                        ; sda.Fill(ds);
                        return ds.GetXml();
                    }
                }
            }
        }
    }
}