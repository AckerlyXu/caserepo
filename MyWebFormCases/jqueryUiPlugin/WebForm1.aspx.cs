using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.jqueryUiPlugin
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable table = new DataTable();
                table.Columns.Add(new DataColumn("Item"));
                table.Columns.Add(new DataColumn("Sale"));
                table.Columns.Add(new DataColumn("Purchase"));
                table.Rows.Add("item1", "sale1", "purchase1");
                table.Rows.Add("item2", "sale2", "purchase2");
                table.Rows.Add("item3", "sale3", "purchase3");
                table.Rows.Add("item4", "sale4", "purchase4");
                table.Rows.Add("item5", "sale5", "purchase5");
                gvw.DataSource = table;
                gvw.DataBind();
            }
        }
    }
}