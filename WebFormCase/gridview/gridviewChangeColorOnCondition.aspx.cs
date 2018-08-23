using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebFormCase.models;

namespace WebFormCase.gridview
{
    public partial class gridviewChangeColorOnCondition : System.Web.UI.Page
    {
        supplyModel supplyModel = new supplyModel();
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView5.DataSource = supplyModel.orders.ToList();
            GridView5.DataBind();
        }

        protected void Yadsrch_Click(object sender, EventArgs e)
        {

        }

        protected void GridView5_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                
                     order drv = e.Row.DataItem as order;
                    

                    if ((bool)drv.ostatus)
                    {
                        e.Row.Cells[2].ForeColor = System.Drawing.Color.Black;
                        e.Row.Cells[2].BackColor = System.Drawing.Color.Cyan;
                    e.Row.Cells[2].Text = "accepted";
                    }
                    else
                    {
                        e.Row.Cells[2].ForeColor = System.Drawing.Color.Black;
                        e.Row.Cells[2].BackColor = System.Drawing.Color.Orange;
                    e.Row.Cells[2].Text = "refused";
                    }

              
               
            }

        }
    }
}