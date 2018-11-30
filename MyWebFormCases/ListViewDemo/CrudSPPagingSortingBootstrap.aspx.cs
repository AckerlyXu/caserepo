using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.ListViewDemo
{
    public partial class CrudSPPagingSortingBootstrap : System.Web.UI.Page
    {
        //send totalPage currentPage to the page
        public int TotalPage { get; set; }
        public int CurrentPage { get; set; }
        public string url = ConfigurationManager.ConnectionStrings["NorthwindConnectionString"].ConnectionString; 
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
              
               int currentPage= Convert.ToInt32(Request["currentPage"]??"1");
                CurrentPage = currentPage;

                //keep the state of currentPage ,sort and search
                ViewState["currentPage"] = currentPage;
                ViewState["sort"] = Request["sort"];
                ViewState["search"] = Request["search"];
                BindData(currentPage, ViewState["sort"] == null ? "CustomerId": ViewState["sort"].ToString(),ViewState["search"]==null?"":ViewState["search"].ToString());
            }
           

        }



        // the method to bind data ,use currentPage and sort as parameter to page and sort
        public void BindData(int CurrentPage,string sort,string search)
        {

            //call sotored procedure
            string sql = "select_page_customer_where";
            using (SqlDataAdapter adapter = new SqlDataAdapter(sql, url))
            {
                SqlParameter sqlParameter = new SqlParameter("totalPage", SqlDbType.Int) { Direction = ParameterDirection.Output };
                SqlParameter[] sqlParameters = new SqlParameter[] {
                    new SqlParameter("currentPage",SqlDbType.Int){Value=CurrentPage},
                    sqlParameter,
                    new SqlParameter("pageSize",SqlDbType.Int){Value=5},
                    new SqlParameter("sort",SqlDbType.NVarChar,50){Value=sort},
                    new SqlParameter("custId",SqlDbType.NVarChar,50){Value=search}
                };
                
                
                adapter.SelectCommand.CommandType = CommandType.StoredProcedure;
                adapter.SelectCommand.Parameters.AddRange(sqlParameters);
                DataTable table = new DataTable();
                adapter.Fill(table);
                
                ListView1.DataSource = table;
                ListView1.DataBind();
                TotalPage =(int)Math.Ceiling(Convert.ToInt32( sqlParameter.Value)*1.0/10);

            }

        }

        protected void ListView1_ItemUpdating(object sender, ListViewUpdateEventArgs e)
        {
            ListViewDataItem item = ListView1.Items[e.ItemIndex];
            string cid = ListView1.DataKeys[e.ItemIndex].Value.ToString();
           string cName= (item.FindControl("CompanyNameTextBox") as TextBox).Text;
            string contact= (item.FindControl("ContactNameTextBox") as TextBox).Text;
            string ct = (item.FindControl("ContactTitleTextBox") as TextBox).Text;
            
            SqlParameter[] sqlParameters = new SqlParameter[] {
                new SqlParameter("cpName",SqlDbType.NVarChar,30){Value=cName},
                new SqlParameter("ctName",SqlDbType.NVarChar,30){Value=contact},
                new SqlParameter("cTitle",SqlDbType.NVarChar,30){Value=ct },
                new SqlParameter("cid",SqlDbType.NChar,5){Value=cid}
            };
            using (SqlConnection con = new SqlConnection(url))
            {
                string sql = "update_customer ";
                using (SqlCommand com = new SqlCommand(sql, con))
                {
                    com.CommandType = CommandType.StoredProcedure;
                    com.Parameters.AddRange(sqlParameters);
                    con.Open();
                     com.ExecuteNonQuery();
                    ListView1.EditIndex = -1;
                    BindData(1, ViewState["sort"] == null ? "CustomerId": ViewState["sort"].ToString(), ViewState["search"] == null ? "" : ViewState["search"].ToString());
                    CurrentPage = 1;
                }
            }
        }

        protected void ListView1_ItemEditing(object sender, ListViewEditEventArgs e)
        {
            ListView1.EditIndex = e.NewEditIndex;
            BindData(Convert.ToInt32(ViewState["currentPage"]), ViewState["sort"]==null?"CustomerId":ViewState["sort"].ToString(), ViewState["search"] == null ? "" : ViewState["search"].ToString());
        }

        protected void ListView1_ItemCanceling(object sender, ListViewCancelEventArgs e)
        {
           if(e.CancelMode == ListViewCancelMode.CancelingEdit)
            {
                ListView1.EditIndex = -1;
                BindData(Convert.ToInt32(ViewState["currentPage"]), ViewState["sort"] == null ? "CustomerId": ViewState["sort"].ToString(), ViewState["search"] == null ? "" : ViewState["search"].ToString());
            }
           
        }

        protected void ListView1_Sorting(object sender, ListViewSortEventArgs e)
        {
            BindData(1, e.SortExpression, ViewState["search"] == null ? "" : ViewState["search"].ToString());
            ViewState["sort"] = e.SortExpression;
            ViewState["currentPage"] = 1;
        }

        protected void ListView1_ItemInserting(object sender, ListViewInsertEventArgs e)
        {

            ListViewItem item = e.Item;
            string cid = (item.FindControl("CustomerIDTextBox") as TextBox).Text;
            string cName = (item.FindControl("CompanyNameTextBox") as TextBox).Text;
            string contact = (item.FindControl("ContactNameTextBox") as TextBox).Text;
            string ct = (item.FindControl("ContactTitleTextBox") as TextBox).Text;

            SqlParameter[] sqlParameters = new SqlParameter[] {
                new SqlParameter("cpName",SqlDbType.NVarChar,30){Value=cName},
                new SqlParameter("ctName",SqlDbType.NVarChar,30){Value=contact},
                new SqlParameter("cTitle",SqlDbType.NVarChar,30){Value=ct },
                new SqlParameter("cid",SqlDbType.NChar,5){Value=cid}
            };
            using (SqlConnection con = new SqlConnection(url))
            {
                string sql = "add_customer ";
                using (SqlCommand com = new SqlCommand(sql, con))
                {
                    com.CommandType = CommandType.StoredProcedure;
                    com.Parameters.AddRange(sqlParameters);
                    con.Open();
                    com.ExecuteNonQuery();
                
                    BindData(1, ViewState["sort"] == null ? "CustomerId" : ViewState["sort"].ToString(), ViewState["search"] == null ? "" : ViewState["search"].ToString());
                }
            }

        }

        protected void ListView1_ItemDeleting(object sender, ListViewDeleteEventArgs e)
        {
            ListViewDataItem item = ListView1.Items[e.ItemIndex];
            string cid = ListView1.DataKeys[e.ItemIndex].Value.ToString();

          

            SqlParameter[] sqlParameters = new SqlParameter[] {
              
                new SqlParameter("cid",SqlDbType.NChar,5){Value=cid}
            };
            using (SqlConnection con = new SqlConnection(url))
            {
                string sql = "delete_customer";
                using (SqlCommand com = new SqlCommand(sql, con))
                {
                    com.CommandType = CommandType.StoredProcedure;
                    com.Parameters.AddRange(sqlParameters);
                    con.Open();
                    com.ExecuteNonQuery();
                    
                    BindData(1, ViewState["sort"] == null ? "CustomerId" : ViewState["sort"].ToString(), ViewState["search"] == null ? "" : ViewState["search"].ToString());
                    CurrentPage = 1;
                }
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            BindData(1, ViewState["sort"] == null ? "CustomerId" : ViewState["sort"].ToString(), TextBox1.Text);
            ViewState["search"] = TextBox1.Text;
        }
    }
}