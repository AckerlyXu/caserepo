using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.gridview3
{
    public partial class DealWithNullExe : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable table = new DataTable();
                table.Columns.Add(new DataColumn("date", typeof(DateTime)));
                table.Columns.Add(new DataColumn("id", typeof(int)));
                table.Rows.Add(DBNull.Value,1);
                table.Rows.Add(DBNull.Value,2);
                table.Rows.Add(new DateTime(1721, 02, 05),3);
                table.Rows.Add(new DateTime(1753, 01, 01),4);
                table.Rows.Add(new DateTime(1567, 09, 02),5);
                GridView1.DataSource = table;
               
                GridView1.DataBind();
            }
        }
    }
}