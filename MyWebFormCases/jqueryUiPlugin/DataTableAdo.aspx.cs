using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.jqueryUiPlugin
{
    public partial class DataTableAdo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

         


            if (!IsPostBack)
            {
                GetData();
                gvw1.HeaderRow.Cells[3].Text = "myHeaderThroughHeaderRow";
              
            }
        }


       
        void GetData()
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["NorthwindConnectionString"].ConnectionString))
            {
                SqlCommand cmd = new SqlCommand("Select * from [customers]", con);
                cmd.CommandType = CommandType.Text;
                con.Open();
                SqlDataAdapter sda = new SqlDataAdapter(cmd);

                DataTable dt = new DataTable();
                sda.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    gvw1.DataSource = dt;
                    gvw1.DataBind();
                }
                dt.Clear();
            }

        }
    }
}