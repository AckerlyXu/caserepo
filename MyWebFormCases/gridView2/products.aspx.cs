using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.gridView2
{
    public partial class products : System.Web.UI.Page
    {
        private static string constr = ConfigurationManager.ConnectionStrings["NorthwindConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            string sql = "insert into products (productName,CategoryID,QuantityPerUnit) values(@pname,@cid,@q)";
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand com = new SqlCommand(sql, con))
                {
                    com.Parameters.AddWithValue("pname", TextBox2.Text);
                    com.Parameters.AddWithValue("q", TextBox3.Text);
                    com.Parameters.AddWithValue("cid", DropDownList1.SelectedValue);
                    con.Open();
                    TextBox2.Text = "";
                    TextBox3.Text = "";
                    com.ExecuteNonQuery();
                    
                }
            }
        }
    }
}