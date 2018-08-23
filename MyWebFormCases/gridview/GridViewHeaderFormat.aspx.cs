using MyWebFormCases.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.gridview
{
    public partial class GridViewHeaderFormat : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

            }
            GridViewRow row = new GridViewRow(0, 0, DataControlRowType.Header, DataControlRowState.Normal);
            TableHeaderCell cell = new TableHeaderCell();
            cell.ColumnSpan = 4;
            row.Controls.Add(cell);
            cell = new TableHeaderCell();
            cell.Text = "ChkAll";
            cell.ColumnSpan = 1;
            row.Controls.Add(cell);

            cell = new TableHeaderCell();
            cell.ColumnSpan = 1;
            cell.Text = "Sr.";
            row.Controls.Add(cell);

            cell = new TableHeaderCell();
            cell.ColumnSpan = 1;
            cell.Text = "Type";
            row.Controls.Add(cell);

            cell = new TableHeaderCell();
            cell.ColumnSpan = 1;
            cell.Text = "Name";
            row.Controls.Add(cell);

            cell = new TableHeaderCell();
            cell.ColumnSpan = 1;
            cell.Text = "Department";
            row.Controls.Add(cell);

            cell = new TableHeaderCell();
            cell.ColumnSpan = 6;
            cell.Text = "NS";
            row.Controls.Add(cell);


            if (IsPostBack)
            {
                gvw.HeaderRow.Parent.Controls.RemoveAt(1);
            }



            gvw.HeaderRow.Parent.Controls.AddAt(0, row);

        }
        protected void OnDataBound(object sender, EventArgs e)
        {

            //GridViewRow row = new GridViewRow(0, 0, DataControlRowType.Header, DataControlRowState.Normal);
            //TableHeaderCell cell = new TableHeaderCell();
            //cell.ColumnSpan = 4;
            //row.Controls.Add(cell);
            //cell = new TableHeaderCell();
            //cell.Text = "ChkAll";
            //cell.ColumnSpan = 1;
            //row.Controls.Add(cell);

            //cell = new TableHeaderCell();
            //cell.ColumnSpan = 1;
            //cell.Text = "Sr.";
            //row.Controls.Add(cell);

            //cell = new TableHeaderCell();
            //cell.ColumnSpan = 1;
            //cell.Text = "Type";
            //row.Controls.Add(cell);

            //cell = new TableHeaderCell();
            //cell.ColumnSpan = 1;
            //cell.Text = "Name";
            //row.Controls.Add(cell);

            //cell = new TableHeaderCell();
            //cell.ColumnSpan = 1;
            //cell.Text = "Department";
            //row.Controls.Add(cell);

            //cell = new TableHeaderCell();
            //cell.ColumnSpan = 6;
            //cell.Text = "NS";
            //row.Controls.Add(cell);


            //if (IsPostBack)
            //{
            //    gvw.HeaderRow.Parent.Controls.RemoveAt(1);
            //}



            //gvw.HeaderRow.Parent.Controls.AddAt(0, row);

        }

        protected void OnCheckedChanged(object sender, EventArgs e)
        {
           

        }

       
    }
}