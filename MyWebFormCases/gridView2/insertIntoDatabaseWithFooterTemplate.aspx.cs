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
    public partial class insertIntoDatabaseWithFooterTemplate : System.Web.UI.Page
    {
        public static int a = 1;
        protected void Page_Load(object sender, EventArgs e)
        {

            //SqlDataSource1.DataBind();
            //    GridView1.DataBind();
            if (IsPostBack)
            {
                if (a == 2)
                {
                    SqlDataSource1.SelectCommand = "select * from suppliers where sid<@a ";
                   
                    SqlDataSource1.SelectParameters.Clear();

                    SqlDataSource1.SelectParameters.Add("a", "12");
                    SqlDataSource1.DataBind();
                    a++;
                }


            }
            else
            {

                SqlDataSource1.SelectCommand = "select * from suppliers where sid<@a ";
                a++;
                SqlDataSource1.SelectParameters.Clear();

                SqlDataSource1.SelectParameters.Add("a", "100");
                SqlDataSource1.DataBind();
                GridView1.DataBind();
            }
          


            // 


        }

        private static string constr = ConfigurationManager.ConnectionStrings["supplyModel"].ConnectionString;
        protected void Button1_Click(object sender, EventArgs e)
        {
            string sql = "insert into suppliers values(@name,@city)";
            Button addButton = (Button)sender;
         TextBox box1=   addButton.NamingContainer.FindControl("TextBox1") as TextBox;
          TextBox box2=  addButton.NamingContainer.FindControl("TextBox2") as TextBox;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand com = new SqlCommand(sql, con))
                {
                    com.Parameters.AddWithValue("name",box1.Text);
                    com.Parameters.AddWithValue("city", box2.Text);
                    con.Open();
                   com.ExecuteNonQuery();
                }
            }
            GridView1.DataBind();

        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            
            if (e.CommandName != "Delete") return;
           
            SqlDataSource1.DeleteParameters.Clear();
            SqlDataSource1.DeleteCommand = "DELETE FROM [Suppliers] WHERE [SID] = @SID";
            SqlDataSource1.DeleteParameters.Add("SID", e.CommandArgument.ToString());
            SqlDataSource1.Delete();
            GridView1.DataBind();
        }
    }
}