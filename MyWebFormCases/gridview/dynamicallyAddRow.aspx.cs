using MyWebFormCases.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.gridview
{
    public partial class dynamicallyAddRow : System.Web.UI.Page
    {
        NorthWindDbContext context = new NorthWindDbContext();
        protected void Page_Load(object sender, EventArgs e)
        {
           List< Customer> customers = context.Customers.ToList();
            List<Customer> customersCopy = new List<Customer>();
            for (int i = 0; i < customers.Count; i++)
            {
                customersCopy.Add(customers[i]);
                if ( (i+1)% 2 == 0)
                {
                    customersCopy.Add(new Customer { CompanyName="seperate"});
                }
            }
            GridView1.DataSource = customersCopy;
            GridView1.DataBind();
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)

        {
          
            if ( e.Row.RowType == DataControlRowType.DataRow)
            {
                Customer customer = e.Row.DataItem as Customer;

                //find the newly added data
                if (customer.CompanyName == "seperate")
                {
               // make the cell's columnSpan 11 to fill the whole row
                    e.Row.Cells[0].ColumnSpan += 11;
                    // add class to the first cell to modify the style of it in jquery 
                    e.Row.Cells[0].CssClass = "cell";
                    for (int i = 1; i < e.Row.Cells.Count; i++)
                    {
                        // add class to the other cells of the row to remove them in jquery
                        e.Row.Cells[i].CssClass = "ccel";
                    }
                }


            }
          
        }
    }
}