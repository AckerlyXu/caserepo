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
    public partial class SelectDropDownThroughQueryString : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
           
            binddropdown();
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
                        DropDownList1.DataValueField = "SID";
                        DropDownList1.DataTextField = "city";
                        DropDownList1.DataSource = dt;
                       
                        DropDownList1.DataBind();

                    }


                }

            }
        }

        protected void DropDownList1_DataBound(object sender, EventArgs e)
        {
            string id = Request.QueryString["id"] ?? "1";
            // DropDownList1.SelectedValue = id;
            foreach (ListItem item in DropDownList1.Items)
            {
                if (item.Text == "Pairs")
                {
                    item.Selected = true;
                }
            }
          
        }
    }
}