using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class ShowPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection("data source=localhost;initial catalog=bjhksj;integrated security=True");

            // get the data from database ,I only select the first one of the videos to demonstrate 
            string sql = "select top 1 * from Video";
            using (SqlCommand com = new SqlCommand(sql, con))
            {


                con.Open();            
                using (SqlDataReader reader = com.ExecuteReader())
                {
                    if (reader.HasRows)
                    {
                        reader.Read();
                      Label1.Text=  reader.GetString(2);
                        Label3.Text = reader.GetString(1);
                    }
                } 

            }
        }
    }
}