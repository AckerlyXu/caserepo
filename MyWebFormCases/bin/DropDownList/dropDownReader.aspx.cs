using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebFormCases.DropDownList
{
    public partial class dropDownReader : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["WebFormCases.Models.supplyModelConnectionString2"].ConnectionString);
            string sql = "select SID , city from suppliers";
   
            using (SqlCommand com = new SqlCommand(sql, con))
            {
                try
                {
                    con.Open();

                    DropDownList1.Items.Add(new ListItem("--Select--", ""));
                    DropDownList1.AppendDataBoundItems = true;
                    DropDownList1.DataValueField = "SID";
                    DropDownList1.DataTextField = "city";
                    DropDownList1.DataSourceID = null;
                    DropDownList1.DataSource = com.ExecuteReader();
                    DropDownList1.DataBind();
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
}