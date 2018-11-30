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
    public partial class childgrid : System.Web.UI.Page
    {
        private static string constr = ConfigurationManager.ConnectionStrings["EntityDb"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
        
            if (!IsPostBack) {
                using (SqlDataAdapter adapter = new SqlDataAdapter("select * from department", constr))
                {

                    
                    DataTable table = new DataTable();
                    adapter.Fill(table);
                    GridView1.DataSource = table;
                    GridView1.DataBind();
                }
            }
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {

            //bind child gridview's data
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                DataRowView rowView = e.Row.DataItem as DataRowView;
                int department_id = Convert.ToInt32(rowView["id"]);
                GridView view = e.Row.FindControl("GridView2") as GridView;
                using (SqlDataAdapter adapter = new SqlDataAdapter("select * from employee where department_id=@did", constr))
                {

                    adapter.SelectCommand.Parameters.AddWithValue("did", department_id);
                    DataTable table = new DataTable();
                    adapter.Fill(table);
                    view.DataSource = table;
                    view.DataBind();
                }
            }
           
        }

        private void BindChild(GridView child) 
        {
            using (SqlDataAdapter adapter = new SqlDataAdapter("select * from employee where department_id=@did", constr))
            {
                // get the stored departmentid from the hiddenfield
                HiddenField field = child.NamingContainer.FindControl("HiddenField1") as HiddenField;
                string department_id = field.Value;
                adapter.SelectCommand.Parameters.AddWithValue("did", department_id);
                DataTable table = new DataTable();
                adapter.Fill(table);
                child.DataSource = table;
                child.DataBind();
            }
        }

        protected void GridView2_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView child = (GridView)sender;
            child.EditIndex = e.NewEditIndex;
            BindChild(child);
        }

        protected void GridView2_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            GridView child = (GridView)sender;

           int id= (int)child.DataKeys[e.RowIndex][0];
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand com = new SqlCommand("delete from employee where id=@id", con))
                {
              
                    com.Parameters.AddWithValue("id", id);
                    con.Open();
                    com.ExecuteNonQuery();
                }
            }
            BindChild(child);

        }

        protected void GridView2_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {

            GridView child = (GridView)sender;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand com = new SqlCommand("update employee set name=@name,salary=@salary where id=@id", con))
                {
                    com.Parameters.AddWithValue("name", e.NewValues["name"]);
                    com.Parameters.AddWithValue("salary", e.NewValues["salary"]);
                    com.Parameters.AddWithValue("id",child.DataKeys[ e.RowIndex]["id"]);
                    con.Open();
                    com.ExecuteNonQuery();
                }
            }
            child.EditIndex = -1;
            BindChild(child);
        }

        protected void GridView2_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView child = (GridView)sender;
            child.EditIndex = -1;
            BindChild(child);
        }

        protected void create_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand com = new SqlCommand("insert into employee (name,salary,department_id) values(@name,@salary,@did)", con))
                {
                    com.Parameters.AddWithValue("name", TextBox1.Text);
                    com.Parameters.AddWithValue("salary", TextBox2.Text);
                    com.Parameters.AddWithValue("did", DropDownList1.SelectedValue);
                    TextBox1.Text = "";
                    TextBox2.Text = "";
                    DropDownList1.SelectedValue = DropDownList1.Items[0].Value;
                    con.Open();
                    com.ExecuteNonQuery();

                    //rebind the parent gridview to show the newly inserted data
                    using (SqlDataAdapter adapter = new SqlDataAdapter("select * from department", constr))
                    {


                        DataTable table = new DataTable();
                        adapter.Fill(table);
                        GridView1.DataSource = table;
                        GridView1.DataBind();
                    }
                }
            }
        }
    }
}