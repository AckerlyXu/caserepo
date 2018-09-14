using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.gridview
{
    public partial class EditVideoInGridview : System.Web.UI.Page
    {
        private static string constr = ConfigurationManager.ConnectionStrings["bjhksjConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!IsPostBack)
            //{
            //    BindData();

            //}
            index = 10;
            
        }

        private void BindData()
        {
            string sql = "select * from video";
            using (SqlDataAdapter adapter = new SqlDataAdapter(sql, constr))
            {


                DataTable table = new DataTable();
                adapter.Fill(table);
                GridView1.DataSource = table;
                GridView1.DataBind();
            }
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            //GridView1.EditIndex = e.NewEditIndex;
            //BindData();
        
    }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
        //    GridView1.EditIndex = -1;
        //    BindData();
        }
        public int index { get; set; }
        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            // in RowUpdating only record the RowIndex to use in RowUpdated
            index = e.RowIndex;
           
           
        }

        protected void GridView1_RowUpdated(object sender, GridViewUpdatedEventArgs e)
        {
            
            GridViewRow row = GridView1.Rows[index];
            Response.Write(index);
            Response.Write(row);
            FileUpload upload = row.FindControl("upload") as FileUpload;

            string path = Guid.NewGuid().ToString() + Path.GetExtension(upload.FileName);
            upload.PostedFile.SaveAs(Server.MapPath("/upload/") + path);
            int id = Convert.ToInt32(e.Keys["id"]);
         
            string sql = "update Video set videoPath=@videoPath where id=@id";
          
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand com = new SqlCommand(sql, con))
                {
                    con.Open();
                    com.Parameters.AddWithValue("id", id);
                    com.Parameters.AddWithValue("videoPath", "/upload/" + path);

                    com.ExecuteNonQuery();
                }
            }
        }
    }
}