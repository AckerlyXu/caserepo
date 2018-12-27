using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.sqlserver
{
    public partial class mysqlDatetime : System.Web.UI.Page
    {
        private static string constr = ConfigurationManager.ConnectionStrings["mySqlConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

            MySqlConnection con = new MySqlConnection(constr);
            MySqlCommand com = new MySqlCommand("myPro", con);

            try
            {
                DataTable ae = new DataTable();

                com.CommandType = CommandType.StoredProcedure;
                con.Open();

                com.Parameters.AddWithValue("STARTdate",new DateTime(1994,1,1));

                com.Parameters.AddWithValue("enddate",new DateTime(1995,1,1));
                MySqlDataReader dr= com.ExecuteReader(System.Data.CommandBehavior.CloseConnection);
                ae.Load(dr);
                Response.Write(ae.Rows.Count);

            }
            catch (Exception)
            {
                con.Close();
                con.Dispose();

                throw;
            }
        }
    }
}