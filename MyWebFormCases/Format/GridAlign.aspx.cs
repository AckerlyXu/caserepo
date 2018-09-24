using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.Format
{
    public partial class GridAlign : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Populate dummy data
            DataTable dt = new DataTable();
            dt.Columns.AddRange(new DataColumn[3] { new DataColumn("ITEMID"), new DataColumn("DSC"), new DataColumn("ACTIVE") });
            dt.Rows.Add("1", "Desc111111111111111111111111111111111", "Active22222222222222222222222222222222222222222222222222222222222222222");
            dt.Rows.Add("2", "Desc2", "InActive");
            dt.Rows.Add("3", "Desc3", "Active");
            dt.Rows.Add("4", "Desc4", "Active");
            dt.Rows.Add("5", "Desc6", "InActive");
            dt.Rows.Add("6", "Desc9", "InActive");
            dt.Rows.Add("7", "Desc9", "InActive");
            dt.Rows.Add("8", "Desc9", "InActive");
            dt.Rows.Add("89", "Desc9", "InActive");
            dt.Rows.Add("9", "Desc9", "InActive");
            dt.Rows.Add("1", "Desc9", "InActive"); dt.Rows.Add("6", "Desc9", "InActive");
            dt.Rows.Add("67", "Desc9", "InActive");
            dt.Rows.Add("60", "Desc9", "InActive");
            dt.Rows.Add("64", "Desc9", "InActive");

            ItemGridView.DataSource = dt;
            ItemGridView.DataBind();
        }
    }
}