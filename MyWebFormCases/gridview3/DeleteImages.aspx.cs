using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.gridview3
{
    public partial class DeleteImages : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGridview();
            }
        }
        private void BindGridview()
        {
            using (SqlDataAdapter adapter = new SqlDataAdapter("select * from productBak ", constr))
            {


                DataTable table = new DataTable();
                adapter.Fill(table);
                GridView1.DataSource = table;
                GridView1.DataBind();
            }
        }
        private static string constr = ConfigurationManager.ConnectionStrings["WingtipToysConnectionString"].ConnectionString;
        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand com = new SqlCommand("delete from [productBak] where productid =@id ", con))
                {

                    com.Parameters.AddWithValue("id", GridView1.DataKeys[e.RowIndex].Value);
                    Image image = GridView1.Rows[e.RowIndex].FindControl("Image1") as Image;
                    File.Delete(Server.MapPath(image.ImageUrl));  //get the absolute of image and delete from the server
                    con.Open();
                    com.ExecuteNonQuery();
                }
            }
            BindGridview();
        }
    }
}