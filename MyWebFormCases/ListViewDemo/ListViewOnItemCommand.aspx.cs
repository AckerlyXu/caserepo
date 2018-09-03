using MyWebFormCases.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebFormCases.Models;

namespace MyWebFormCases.ListViewDemo
{
    public partial class ListViewOnItemCommand : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ListView1_ItemCommand(object sender, ListViewCommandEventArgs e)
        {//you should convert object to int32 to get the item  and convert the finded control to Label
            Label LblDDate = ListView1.Items[Convert.ToInt32(e.CommandArgument)].FindControl("DDate") as Label ;   
         
            // Determine what button was selected
            if (string.Equals(e.CommandName, "Select_Sel"))     // transfer to change page

            {
                
                Response.Redirect("form2_Chg.aspx");

            }

        }

        // The return type can be changed to IEnumerable, however to support
        // paging and sorting, the following parameters must be added:
        //     int maximumRows
        //     int startRowIndex
        //     out int totalRowCount
        //     string sortByExpression
        SupplyModel repo = new SupplyModel();
        public IQueryable<Supplier> GetSuppliers()
        {
            return repo.Suppliers.AsQueryable();
        }
    }
}