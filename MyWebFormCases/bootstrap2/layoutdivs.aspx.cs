using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.bootstrap2
{
    public partial class layoutdivs : System.Web.UI.Page
    {
        private void binddatalist()
        {

            DataSet dt = new DataSet();
            SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["tag"].ConnectionString);
            con1.Open();
            SqlCommand cmd1 = new SqlCommand("select Item_Name,BC from Table1", con1);
            SqlDataAdapter ada1 = new SqlDataAdapter(cmd1);
            ada1.Fill(dt);
            Repeater1.DataSource = dt;
            Repeater1.DataBind();
            con1.Close();


        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                TextBox2.Text = DateTime.Now.ToString("dd-MMM-yyyy");

                binddatalist();


            }
        }

        protected void Print(object sender, EventArgs e)
        {
      
            this.ClientScript.RegisterStartupScript(this.GetType(), "Print", "Print()", true);
        }

        protected void refresh_Click(object sender, EventArgs e)
        {
            Response.Redirect(Request.RawUrl);
        }


    }
}