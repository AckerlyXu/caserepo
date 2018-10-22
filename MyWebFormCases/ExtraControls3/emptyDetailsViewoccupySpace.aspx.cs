using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.ExtraControls3
{
    public partial class emptyDetailsViewoccupySpace : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable table = new DataTable();
            table.Columns.AddRange(new DataColumn[] { new DataColumn("key1"), new DataColumn("value1") });
            table.Rows.Add("1", "2");

            DetailsView1.DataSource = table;
            DetailsView1.DataBind();

            DetailsView3.DataSource = table;
            DetailsView3.DataBind();
            table = new DataTable();
            DetailsView2.DataSource = table;
            DetailsView1.Height = 0;
           DetailsView2.DataBind();
            


        }
    }
}