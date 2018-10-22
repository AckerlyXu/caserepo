using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.DropDownListDemo
{
  
    public partial class TextboxWithDropdown : System.Web.UI.Page
    {
        private static string constr = ConfigurationManager.ConnectionStrings["supplyModel"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                using (SqlConnection con = new SqlConnection(constr))
                {                      // select the first record for the textbox
               
                    using (SqlCommand com = new SqlCommand("select top 1 city from suppliers", con))
                    {
                      
                        con.Open();
                   MyFormTextBox.Text=    com.ExecuteScalar() as String;
                    }

                }
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(constr))
            {

                // get the conrosponding value according to the id of the record
                using (SqlCommand com = new SqlCommand("select  city from suppliers where sid=@id", con))
                {
                    com.Parameters.AddWithValue("id", DropDownList1.SelectedValue);
                    con.Open();
                    MyFormTextBox.Text = com.ExecuteScalar() as String;
                }

            }
          
        }
    }
}