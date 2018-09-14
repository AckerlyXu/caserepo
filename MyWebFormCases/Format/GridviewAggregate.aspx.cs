using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.Format
{
    public partial class GridviewAggregate : System.Web.UI.Page
    {
        public string constr = ConfigurationManager.ConnectionStrings["UserItemDb3"].ToString();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGridView();
            }
        }

        protected void BindGridView()
        {
            DataTable dt = new DataTable();
            using (SqlConnection con = new SqlConnection(constr))
            {
                string cmdtext = "select ID, Item_Name, Unit, Qty, Rate from Item_Table";
                using (SqlCommand cmd = new SqlCommand(cmdtext, con))
                {
                    con.Open();
                    SqlDataAdapter sda = new SqlDataAdapter(cmd);
                    sda.Fill(dt);
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                }
            }
        }

        // To keep track of the previous row Group Identifier    
        string strPreviousRowName = string.Empty;
        // To keep track the Index of Group Total    
        int intSubTotalIndex = 1;
        // To temporarily store Sub Total  of kg and ltr separately   
        //double dblSubTotalUnitPrice = 0;
        double dblSubTotalQuantity = 0;

        double kgSubTotalRate = 0;
        double LtrSubToatalRate = 0;
        //double kgSubTotalQty = 0;
        //double LtrSubTotalQty = 0;
       
        // To temporarily store total data of kg and ltr separately   
        //double dblGrandTotalUnitPrice = 0;
        double dblGrandTotalQuantity = 0;
        double kgTotalRate = 0;
       
        double ltrTotalRate = 0;
        //double kgTotalQty = 0;
        //double ltrTotalQty = 0;
        protected void GridView1_RowCreated(object sender, GridViewRowEventArgs e)
        {
            bool IsSubTotalRowNeedToAdd = false;
            bool IsGrandTotalRowNeedtoAdd = false;
            if ((strPreviousRowName != string.Empty) && (DataBinder.Eval(e.Row.DataItem, "Item_Name") != null))
                if (strPreviousRowName != DataBinder.Eval(e.Row.DataItem, "Item_Name").ToString())
                    IsSubTotalRowNeedToAdd = true;
            if ((strPreviousRowName != string.Empty) && (DataBinder.Eval(e.Row.DataItem, "Item_Name") == null))
            {
                IsSubTotalRowNeedToAdd = true;
                IsGrandTotalRowNeedtoAdd = true;
                intSubTotalIndex = 0;
            }

            if ((strPreviousRowName == string.Empty) && (DataBinder.Eval(e.Row.DataItem, "Item_Name") != null))
            {
                //insert a new row
                GridView grdViewOrders = (GridView)sender;
                GridViewRow row = new GridViewRow(0, 0, DataControlRowType.DataRow, DataControlRowState.Insert);
                TableCell cell = new TableCell();
                cell.Text = "Item_Name : " + DataBinder.Eval(e.Row.DataItem, "Item_Name").ToString();
                cell.ColumnSpan = 4;
                cell.CssClass = "GroupHeaderStyle";
                row.Cells.Add(cell);
                grdViewOrders.Controls[0].Controls.AddAt(e.Row.RowIndex + intSubTotalIndex, row);
                intSubTotalIndex++;
            }

            if (IsSubTotalRowNeedToAdd)
            {
                #region Adding Sub Total Row
                GridView grdViewOrders = (GridView)sender;
                // Creating a Row          
                GridViewRow row = new GridViewRow(0, 0, DataControlRowType.DataRow, DataControlRowState.Insert);
                //Adding Total Cell   
           
                TableCell cell = new TableCell();
                //chang the color of the cell
                cell.Style.Add("background-color", "yellow");
                cell.Text = "Sub Total";
                cell.HorizontalAlign = HorizontalAlign.Left;
                cell.ColumnSpan = 2;
                cell.CssClass = "SubTotalRowStyle";
                row.Cells.Add(cell);
                //Adding Quantity Column            
                cell = new TableCell();
                cell.Style.Add("background-color", "yellow");
                // text the subtotal of kg and ltr
                // cell.Text ="kg="+kgSubTotalQty+"|"+"ltr="+LtrSubTotalQty;
                cell.Text = dblSubTotalQuantity.ToString();
                cell.HorizontalAlign = HorizontalAlign.Right;
                cell.CssClass = "SubTotalRowStyle";
                row.Cells.Add(cell);
                //Adding Unit Price Column          
                cell = new TableCell();
                cell.Style.Add("background-color", "yellow");
                //text the subtotal of kg and ltr
                cell.Text = "kg="+kgSubTotalRate+"|"+"ltr="+LtrSubToatalRate;
                cell.HorizontalAlign = HorizontalAlign.Right;
                cell.CssClass = "SubTotalRowStyle";
                row.Cells.Add(cell);
                //Adding the Row at the RowIndex position in the Grid      
                grdViewOrders.Controls[0].Controls.AddAt(e.Row.RowIndex + intSubTotalIndex, row);
                intSubTotalIndex++;
                #endregion
                #region Adding Next Group Header Details
                if (DataBinder.Eval(e.Row.DataItem, "Item_Name") != null)
                {
                    row = new GridViewRow(0, 0, DataControlRowType.DataRow, DataControlRowState.Insert);
                    cell = new TableCell();
                    cell.Text = "Item Name : " + DataBinder.Eval(e.Row.DataItem, "Item_Name").ToString();
                    cell.ColumnSpan = 4;
                    cell.CssClass = "GroupHeaderStyle";
                    row.Cells.Add(cell);
                    grdViewOrders.Controls[0].Controls.AddAt(e.Row.RowIndex + intSubTotalIndex, row);
                    intSubTotalIndex++;
                }
                #endregion
                #region Reseting the Sub Total Variables
                //dblSubTotalUnitPrice = 0;
                //dblSubTotalQuantity = 0;
              //  kgSubTotalQty = 0;
                kgSubTotalRate = 0;
                LtrSubToatalRate = 0;
                dblSubTotalQuantity = 0;
                //LtrSubTotalQty = 0;
                #endregion
            }
            if (IsGrandTotalRowNeedtoAdd)
            {
                #region Grand Total Row
                GridView grdViewOrders = (GridView)sender;
                // Creating a Row      
                GridViewRow row = new GridViewRow(0, 0, DataControlRowType.DataRow, DataControlRowState.Insert);
                //Adding Total Cell           
                TableCell cell = new TableCell();
                cell.Text = "Grand Total";
                cell.HorizontalAlign = HorizontalAlign.Left;
                cell.ColumnSpan = 2;
                cell.CssClass = "GrandTotalRowStyle";
                cell.Style.Add("background-color", "green");
                row.Cells.Add(cell);
                //Adding Quantity Column           
                cell = new TableCell();
                //text the total data of kg and ltr
                // cell.Text = "kg="+kgTotalQty+"|"+"ltr="+ltrTotalQty;
                cell.Text = dblGrandTotalQuantity.ToString();
                cell.HorizontalAlign = HorizontalAlign.Right;
                cell.CssClass = "GrandTotalRowStyle";
                cell.Style.Add("background-color", "green");
                row.Cells.Add(cell);
                //Adding Unit Price Column          
                cell = new TableCell();
                cell.Text ="kg="+kgTotalRate+"|"+"Ltr="+ltrTotalRate;
                cell.HorizontalAlign = HorizontalAlign.Right;
                cell.CssClass = "GrandTotalRowStyle";
                cell.Style.Add("background-color", "green");
                row.Cells.Add(cell);
                //Adding the Row at the RowIndex position in the Grid     
                grdViewOrders.Controls[0].Controls.AddAt(e.Row.RowIndex, row);
                #endregion
            }
        }


        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            // This is for cumulating the values       
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                strPreviousRowName = DataBinder.Eval(e.Row.DataItem, "Item_Name").ToString();
                double dblUnitPrice = Convert.ToDouble(DataBinder.Eval(e.Row.DataItem, "Rate").ToString());
                double dblQuantity = Convert.ToDouble(DataBinder.Eval(e.Row.DataItem, "Qty").ToString());
                // Cumulating Sub Total            
                //  dblSubTotalUnitPrice += dblUnitPrice;
                if (dblQuantity > 0)
                {
                    dblSubTotalQuantity += dblQuantity;
                    dblGrandTotalQuantity += dblQuantity;
                }
                if (DataBinder.Eval(e.Row.DataItem, "Unit").ToString() == "KG")
                {
                    //if current row is the row of kg , record its data
                    kgSubTotalRate += dblUnitPrice;
                   // kgSubTotalQty += dblQuantity;
                    kgTotalRate += dblUnitPrice;
                   // kgTotalQty += dblQuantity;
                }
                if (DataBinder.Eval(e.Row.DataItem, "Unit").ToString() == "Ltr")
                {
                    //if current row is the row of ltr , record its data
                    LtrSubToatalRate += dblUnitPrice;
                   // LtrSubTotalQty += dblQuantity;
                    ltrTotalRate += dblUnitPrice;
                   // ltrTotalQty += dblQuantity;
                }

                //dblSubTotalQuantity += dblQuantity;
                //// Cumulating Grand Total           
                //dblGrandTotalUnitPrice += dblUnitPrice;
                //dblGrandTotalQuantity += dblQuantity;
            }
        }

    }
}