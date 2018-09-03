using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.gridview
{
    public partial class DynamicAddColumnLoseDataWhenPostBack : System.Web.UI.Page
    {
        protected void Page_PreInit(object sender, EventArgs e)
        {
            Grid1.Columns.Add(CreateField());
            Grid2.Columns.Insert(1, CreateField());
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadData(Grid1);
                LoadData(Grid2);
            }
            
        }

        private BoundField CreateField()
        {
            var col = new BoundField
            {
                HeaderText = "Col3 (dynamic)",
                DataField = "col3"
            };
            return col;
        }

        private static void LoadData(GridView ctrl)
        {
            var table = new DataTable();
            table.Columns.Add("col1");
            table.Columns.Add("col2");
            table.Columns.Add("col3");
            table.Columns.Add("col4");

            var row1 = table.NewRow();
            row1["col1"] = "val1";
            row1["col2"] = "val2";
            row1["col3"] = "val3";
            row1["col4"] = "val4";

            table.Rows.Add(row1);

            ctrl.DataSource = table;
            ctrl.DataBind();
        }

        protected void Grid2_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            
        }
    }
}