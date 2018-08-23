using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebFormIdentity.Models;

namespace WebFormIdentity
{
    public partial class GridViewUserList : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        // The return type can be changed to IEnumerable, however to support
        // paging and sorting, the following parameters must be added:
        //     int maximumRows
        //     int startRowIndex
        //     out int totalRowCount
        //     string sortByExpression

        ApplicationDbContext applicationDbContext = new ApplicationDbContext();
        public IQueryable<ApplicationUser> GridView1_GetData()
        {
            return applicationDbContext.Users ;
        }
    }
}