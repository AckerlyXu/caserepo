using MyWebFormCases.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.ModelBinding;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebFormCases.Models;

namespace WebFormCases
{
    public partial class ShowAllContacts : System.Web.UI.Page
    {
        SupplyModel SupplyModel = new SupplyModel();
      
        protected void Page_Load(object sender, EventArgs e)
        {
        
        }

      public IQueryable<Contact>  GetContacts([QueryString]int SID)
        {
         
         
            return SupplyModel.Contacts.Where(c => c.Supplier.SID == SID).AsQueryable();
        }
    }
}