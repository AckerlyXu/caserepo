using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.sqlserver
{
    public partial class SimpifySqlCondition : System.Web.UI.Page
    {
        private static string constr = ConfigurationManager.ConnectionStrings["supplyModel"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable table = new DataTable();
            table.Columns.Add(new DataColumn("Employee1",typeof(Int32)));
            table.Columns.Add(new DataColumn("Employee2", typeof(Int32)));
            table.Columns.Add(new DataColumn("Employee3", typeof(Int32)));
         DataRow newrow=   table.NewRow();
            newrow[0] = 2;
            newrow[1] =DBNull.Value;  //the second value is null
            newrow[2] = 4;
         
            table.Rows.Add(newrow);
            string sql = "select * from suppliers where Sid in ( ";
            //definde a list of employee columns
            List<String> employees = new List<string> { "Employee1", "Employee2", "Employee3" };

            SqlCommand command = new SqlCommand();
            command.Connection = new SqlConnection(constr);

          //loop through the list so that you only need to deal with sqlcommand for one time
                foreach (var employee in employees)
                {
                    if (!string.IsNullOrEmpty(Convert.ToString(table.Rows[0][employee])))
                    {
                        sql += "  @" + employee +",";
                        command.Parameters.AddWithValue(employee, table.Rows[0][employee]);

                    }
                }
            sql = sql.TrimEnd(',') + ")"; // remove the last "," and add )
            
            command.CommandText = sql;
         
            Response.Write(sql);
            using (SqlDataAdapter adapter = new SqlDataAdapter())
            {

                adapter.SelectCommand = command;

                DataTable table2 = new DataTable();
                adapter.Fill(table2);
                GridView1.DataSource = table2;
                GridView1.DataBind();

            }


            //for (int i = 0; i < 3; i++)
            //{
            // if(row[i] != DBNull.Value && !string.IsNullOrEmpty( row[i].ToString())) {


            //    }
            //}




        }
    }
}