using MyWebFormCases.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.gridview
{
    public partial class PagingWithSelectMthod : System.Web.UI.Page
    {
        NorthWindDbContext dbContext = new NorthWindDbContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        public IQueryable<Customer> GetCustomers()
        {
         return    dbContext.Customers;
        }

        // The return type can be changed to IEnumerable, however to support
        // paging and sorting, the following parameters must be added:
        //     int maximumRows
        //     int startRowIndex
        //     out int totalRowCount
        //     string sortByExpression
        public IQueryable<MyWebFormCases.Models.Customer> GridView1_GetData()
        {
            return dbContext.Customers;
        }
    }
}