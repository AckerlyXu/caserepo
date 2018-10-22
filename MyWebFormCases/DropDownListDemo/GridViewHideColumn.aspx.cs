using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.DropDownListDemo
{
    public partial class GridViewHideColumn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            GridView2.DataSource = getDataTable();
            GridView2.DataBind();
        }
        public static DataTable getDataTable()
        {

            DataTable dt = new DataTable();
            using (SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["supplyModel1"].ConnectionString))
            {
                con1.Open();
                using (SqlCommand cmd1 = new SqlCommand("select * from suppliers", con1))
                {
                    cmd1.CommandTimeout = 90000;
                    using (SqlDataAdapter ada1 = new SqlDataAdapter(cmd1))
                    {
                        ada1.Fill(dt);
                        return dt;
                    } 
                   
                   
                }



                // return dt;

            }

        }
    }
}