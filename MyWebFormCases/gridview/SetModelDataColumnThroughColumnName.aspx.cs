using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.gridview
{
    public partial class SetModelDataColumnThroughColumnName : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if(e.Row.RowType==DataControlRowType.DataRow)
            {
               
                TableCellCollection tableCellCollection = e.Row.Cells;
             

                foreach (DataControlFieldCell item in tableCellCollection)
                {
                    if (item.ContainingField.HeaderText == "myOwnText")
                    {
                  
                        item.Text = "hello";
                    }
                    if(item.ContainingField.HeaderText== "CustomerID")
                    {
                        item.Text = item.Text + "myEdit";
                    }
                }
            }
          
        }
    }
}