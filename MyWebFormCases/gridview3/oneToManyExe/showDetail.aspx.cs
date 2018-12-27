using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.gridview3.oneToManyExe
{
    public partial class showDetail : System.Web.UI.Page
    {
        private static string constr = ConfigurationManager.ConnectionStrings["WingtipToysConnectionString2"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
              int id =  Request["id"] == null ? 1 : int.Parse(Request["id"]);
                using (SqlDataAdapter adapter = new SqlDataAdapter("select * from Products where categoryId =@id", constr))
                {

                    adapter.SelectCommand.Parameters.AddWithValue("id", id);
                    DataTable table = new DataTable();
                    adapter.Fill(table);
                    GridView1.DataSource = table;
                    GridView1.DataBind();
                    
                }
            }

        }
    }
}