using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.ExtraControls3
{
    public partial class DetailsViewCollectionNotNull : System.Web.UI.Page
    {
        private static string constr = ConfigurationManager.ConnectionStrings["supplyModel"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //BindDetail();              
            }
        }

        private void BindDetail()
        {
            using (SqlDataAdapter adapter = new SqlDataAdapter("select * from suppliers", constr))
            {

                DataTable table = new DataTable();
                adapter.Fill(table);
               // Response.Write(table.Rows.Count);
                DetailsView1.DataSource = table;
                DetailsView1.DataBind();
            }
        }

        protected void DetailsView1_ItemInserting(object sender, DetailsViewInsertEventArgs e)
        {
            Response.Write(DetailsView1.CurrentMode == DetailsViewMode.Insert);
            // DetailsView1.DataSource = null;
           
            DetailsView1.DataSource = new DataTable();
            DetailsView1.DataBind();
            DetailsView1.ChangeMode(DetailsViewMode.ReadOnly);
        }

        protected void DetailsView1_ModeChanging(object sender, DetailsViewModeEventArgs e)
        {
            DetailsView1.ChangeMode(e.NewMode);
            this.BindDetail();
        }

        protected void DetailsView1_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
        {
            DetailsView1.PageIndex = e.NewPageIndex;
            BindDetail();
        }
    }
}