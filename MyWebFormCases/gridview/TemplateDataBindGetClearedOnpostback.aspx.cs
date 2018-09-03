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
    public partial class TemplateDataBindGetClearedOnpostback : System.Web.UI.Page
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

        protected void gvw_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "EditRow")
            {
                GridViewRow row = (GridViewRow)((LinkButton)e.CommandSource).NamingContainer;
                HiddenField hdf = (row.FindControl("hdfEntryNo") as HiddenField);
                hdf_EntryNo.Value = hdf.Value;

                txtCode.Text = (row.Cells[1].FindControl("lblCode") as Label).Text;
                //get the data through the label's attributes categoryId, you could use your own name 
                string categoryId = (row.FindControl("lblCategory") as Label).Attributes["categoryId"];
                txtDescription.Text = (row.Cells[1].FindControl("lblDescription") as Label).Text;
                ClientScript.RegisterStartupScript(this.GetType(), "Pop", "openModal();", true);
            }
        }

        protected void gvw_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                string m_Category = string.Format("{0}", DataBinder.Eval(e.Row.DataItem, "Categoryid"));
                using (SqlConnection con = new SqlConnection(constr))
                {
                    SqlCommand cmd = new SqlCommand("Select category from [Category] where id = @Category", con);
                    cmd.Parameters.AddWithValue("@Category", m_Category);
                    cmd.CommandType = CommandType.Text;
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }
                    // show your data through the label's text property
                  (e.Row.FindControl("lblCategory") as Label).Text = (string)cmd.ExecuteScalar();
                  
                }
                
            }
        }


        protected void UpdateData(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(constr))
                {
                    string sql = "update entries set code=@code ,description=@description where entryNo=@entryNo";
                    SqlCommand cmd = new SqlCommand(sql, con);

                    SqlParameter[] sqlParameters = new SqlParameter[]
                    {
                        new SqlParameter("code",SqlDbType.NVarChar,50){Value=txtCode.Text},
                        new SqlParameter("description",SqlDbType.NVarChar,50){Value=txtDescription.Text},
                        new SqlParameter("entryNo",SqlDbType.Int){Value=Convert.ToInt32(hdf_EntryNo.Value)}
                    };
                    cmd.Parameters.AddRange(sqlParameters);

                    con.Open();
                    cmd.ExecuteNonQuery();
                    // update data in gridview after editing
                    BindData();



                }
            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "Popup", "ShowPopup('" + ex.Message + "');", true);
            }
        }

    }
}