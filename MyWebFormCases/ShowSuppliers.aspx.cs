using MyWebFormCases.Models;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebFormCases.Models;

namespace WebFormCases
{
    public partial class ShowSuppliers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int a = 1;
            //Process.GetCurrentProcess().Kill();
        }

        SupplyModel repo = new SupplyModel();
        public IQueryable<Supplier> GetSuppliers()
        {
            return repo.Suppliers.AsQueryable();
        }
    }
}