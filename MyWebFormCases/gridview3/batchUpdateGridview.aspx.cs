using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.gridview3
{
    public partial class batchUpdateGridview : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            foreach ( GridViewRow row in GridView1.Rows)
            {
                // to enter edit mode make all the textbox show , all the label hide
                if (row.RowType == DataControlRowType.DataRow)
                {
                 Label label=   row.FindControl("label1") as Label;
                    label.Visible = false;
                    TextBox box = row.FindControl("textbox1") as TextBox;
                    box.Visible = true;

                   label = row.FindControl("label2") as Label;
                    label.Visible = false;
                   box = row.FindControl("textbox2") as TextBox;
                    box.Visible = true;


                    label = row.FindControl("label3") as Label;
                    label.Visible = false;
                   box = row.FindControl("textbox3") as TextBox;
                    box.Visible = true;

                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            // to leave edit mode make all the textbox hide , all the label show
            foreach (GridViewRow row in GridView1.Rows)
            {
                if (row.RowType == DataControlRowType.DataRow)
                {
                    Label label = row.FindControl("label1") as Label;
                    label.Visible = true;
                    TextBox box = row.FindControl("textbox1") as TextBox;
                    box.Visible = false;

                    label = row.FindControl("label2") as Label;
                    label.Visible = true;
                    box = row.FindControl("textbox2") as TextBox;
                    box.Visible = false;


                    label = row.FindControl("label3") as Label;
                    label.Visible = true;
                    box = row.FindControl("textbox3") as TextBox;
                    box.Visible = false;

                }
            }
        }
        private static string constr = ConfigurationManager.ConnectionStrings["EntityExe1"].ConnectionString;
        protected void Button3_Click(object sender, EventArgs e)
        {
          // on updating ,find all the textbox and update all the row in a for loop
            foreach (GridViewRow row in GridView1.Rows)
            {
                if (row.RowType == DataControlRowType.DataRow)
                {
                    Label label = row.FindControl("label1") as Label;
                    label.Visible = true;
                    TextBox box = row.FindControl("textbox1") as TextBox;
                    box.Visible = false;
                    string name = box.Text;
                   
                    label = row.FindControl("label2") as Label;
                    label.Visible = true;
                    box = row.FindControl("textbox2") as TextBox;
                    box.Visible = false;
                    int price = int.Parse(box.Text);
                  

                    label = row.FindControl("label3") as Label;
                    label.Visible = true;
                    box = row.FindControl("textbox3") as TextBox;
                    
                    box.Visible = false;
                    string marca = box.Text;


                    int id = int.Parse(row.Cells[0].Text);


                    using (SqlConnection con = new SqlConnection(constr))
                    {
                        using (SqlCommand com = new SqlCommand("update [perfume] set name=@name ,price=@price,marca=@marca where id=@id ", con))
                        {
                            com.Parameters.AddWithValue("name", name);
                            com.Parameters.AddWithValue("price", price);
                            com.Parameters.AddWithValue("marca", marca);
                            com.Parameters.AddWithValue("id", id);
                            con.Open();
                             com.ExecuteNonQuery();
                        }
                    }

                }
                //at last, rebind the gridview to show the new data
               GridView1.DataBind();
            }
        }
    }
}