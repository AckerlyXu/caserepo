using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.CssCase
{
    public partial class cssSelectWebFormControl : System.Web.UI.Page
    {
        private static string constr = ConfigurationManager.ConnectionStrings["bjhksjConnectionString"].ConnectionString;

        public object GridView1 { get; private set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            BindGridView();

        }

        public void BindGridView()
        {

            string sql = "select * from HKSJ_Clients";
            using (SqlDataAdapter adapter = new SqlDataAdapter(sql, constr))
            {


                DataTable table = new DataTable();
                adapter.Fill(table);
                //GridView1.DataSource = table;
                //GridView1.DataBind();
            }

        }
    }
}