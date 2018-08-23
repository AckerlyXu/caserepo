using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.jqueryUiPlugin
{
    public partial class JqueryDataTableNotWorkAfterUpdatePanelUpdate : System.Web.UI.Page
    {
        private static string constr = ConfigurationManager.ConnectionStrings["supplyModel"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                FillGrid();
            }
        }

        public void FillGrid()
        {
            string sql = "select * from suppliers";

            using (SqlDataAdapter adapter = new SqlDataAdapter(sql, constr))
            {

               
                DataTable table = new DataTable();
                adapter.Fill(table);
                gvwInflator.DataSource = table;
                gvwInflator.DataBind();


            }
           
        }
        protected void btnInsert_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(constr))
            {
                con.Open();
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.CommandText = "INSERT INTO suppliers (Name,City) VALUES (@Name,@City)";
                    cmd.Connection = con;
                    cmd.CommandType = CommandType.Text;
                    cmd.Parameters.AddWithValue("Name", txtInflator.Text);
                    cmd.Parameters.AddWithValue("City", txtDeflator.Text);
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
            }
            txtInflator.Text = "";
            txtDeflator.Text = "";
            FillGrid();
            // you only need to write your js code as the third parameter of the method
            // myscript is the name the your js code
            ScriptManager.RegisterStartupScript(this, this.GetType(), "myScript", " $(\" <thead ></thead > \").append($(\"#gvwInflator tr:first\")).prependTo($(\"#gvwInflator\"));"
         + "   $('#gvwInflator').dataTable(); ", true);
        }
    }
}