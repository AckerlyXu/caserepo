using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.gridView2
{
    public partial class FilterWithDataView : System.Web.UI.Page
    {
        private static string constr = ConfigurationManager.ConnectionStrings["mySqlConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GridView1.DataSource = GetTable();
                GridView1.DataBind();
            }
            
        }


        private DataTable GetTable() {
            using (MySqlDataAdapter adapter = new MySqlDataAdapter("select * from dateTest ", constr))
            {
                
                DataTable table = new DataTable();
                adapter.Fill(table);
                return table;
               
            }
        }
        private DataTable GetFilteredTable(string from,string to)
        {
            using (MySqlDataAdapter adapter = new MySqlDataAdapter("select * from dateTest WHERE STR_TO_DATE(`date`,'%d-%b-%Y') between  STR_TO_DATE(@from,'%d-%b-%Y') and STR_TO_DATE(@to,'%d-%b-%Y') ", constr))
            {
              
                adapter.SelectCommand.Parameters.AddWithValue("from", from);
                adapter.SelectCommand.Parameters.AddWithValue("to", to);
                DataTable table = new DataTable();
                adapter.Fill(table);
                return table;

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
            GridView1.DataSource = GetFilteredTable(TextBox1.Text, TextBox2.Text);
            GridView1.DataBind();
        }
    }
}