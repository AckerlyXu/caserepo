using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.gridview
{
    public partial class modelPopupSaveValueToHiddenField : System.Web.UI.Page
    {
        private static string constr = ConfigurationManager.ConnectionStrings["EntityExe"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindData();
            } 
        }

        private void BindData()
        {
            string sql = "select * from entries";
            using (SqlDataAdapter adapter = new SqlDataAdapter(sql, constr))
            {


                DataTable table = new DataTable();
                adapter.Fill(table);
                gvwCategories.DataSource = table;
                gvwCategories.DataBind();


            }
        }
    }
}