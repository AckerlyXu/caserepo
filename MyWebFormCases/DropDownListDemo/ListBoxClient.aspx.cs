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
    public partial class ListBoxClient : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                binddropdown();
            }
        }
        private void binddropdown()
        {
            DataTable dt = new DataTable();
            using (SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["supplyModel1"].ConnectionString))
            {
                con1.Open();
                using (SqlCommand cmd1 = new SqlCommand("select * from suppliers", con1))
                {

                    using (SqlDataAdapter ada1 = new SqlDataAdapter(cmd1))
                    {
                        ada1.Fill(dt);
                        ListBox1.DataValueField = "SID";
                        ListBox1.DataTextField = "city";
                        ListBox1.DataSource = dt;

                        ListBox1.DataBind();

                    }


                }

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            foreach (ListItem item in ListBox1.Items)
            {
                Response.Write(item.Selected ? item.Text + ";" : "");
            }
            Response.Write("<br/>valuefrom HiddenField:"+HiddenField1.Value);
        }
    }
}