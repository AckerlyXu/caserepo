using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.gridview3
{
    public partial class OneToMany1 : System.Web.UI.Page
    {
        private static string constr = ConfigurationManager.ConnectionStrings["EntityDb"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!IsPostBack)
            //{
            //    BindGridView();
            //}
        }

        //private void BindGridView()
        //{
        //    using (SqlDataAdapter adapter = new SqlDataAdapter("select * from Department", constr))
        //    {

            
        //        DataTable table = new DataTable();
        //        adapter.Fill(table);
        //        GridView1.DataSource = table;
        //        GridView1.DataBind();
        //    }
        //}

        protected void GridView1_DataBound(object sender, EventArgs e)
        {
            if (GridView1.EditIndex != -1)
            {
             GridViewRow row=   GridView1.Rows[GridView1.EditIndex];
                DropDownList drop= row.FindControl("DropDownList1") as DropDownList;
              DataKey key=  GridView1.DataKeys[GridView1.EditIndex];
                using (SqlDataAdapter adapter = new SqlDataAdapter("select * from employee where department_id=@id", constr))
                {
                    adapter.SelectCommand.Parameters.AddWithValue("id", key.Value);

                    DataTable table = new DataTable();
                    adapter.Fill(table);
                    drop.DataSource = table;
                    drop.DataTextField = "name";
                    drop.DataValueField = "id";
                    drop.DataBind();
                }
            }
        }

        //protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        //{
        //    GridView1.EditIndex = e.NewEditIndex;
        //    BindGridView();
        //}
    }
}