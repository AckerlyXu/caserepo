
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebFormCases.Models;

namespace WebFormCases.bootstrap
{
    public partial class bootStrapModalGridView : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //gridview的datarowcommand事件不能每次回发以后都重新绑定数据，只能
                //在第一次page_load事件中绑定，不然没有办法触发
                string sql = "select * from suppliers ";
            
              DataTable dataTable=  SqlHelper.getDataTable(sql);
               
                GridView1.DataSource = dataTable;
                GridView1.DataBind();
                dataTable.Dispose();
               

            }


        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if(e.CommandName== "EditTreatment")
            {
                string sql = "select * from suppliers where sid=@sid";
                int SID = int.Parse(e.CommandArgument.ToString());
              DataRow row=  SqlHelper.getDataTable(sql, new System.Data.SqlClient.SqlParameter("@sid", SqlDbType.Int) { Value = SID }).AsEnumerable().FirstOrDefault();


                //Supplier supplier = supplyModel.Suppliers.Find(SID);
                txtNewTreatmentName.Text = row.Field<string>("Name");
                btnAddServ.Text = "Update treatment info";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "mykey", "$(function(){" +
                   
                   " $('#myTreatmentModal').modal()"
                    +
                    "})",true);
               
            }
        }
    }

public static class SqlHelper
    {
        private static string url = ConfigurationManager.ConnectionStrings["supplyModel"].ConnectionString;
        public static DataTable getDataTable(string sql, params SqlParameter[] sqlParameters)
        {

            using (SqlDataAdapter adapter = new SqlDataAdapter(sql, url))
            {

                adapter.SelectCommand.Parameters.AddRange(sqlParameters);
                DataTable table = new DataTable();
                adapter.Fill(table);
                return table;
            }
        }
    }
}