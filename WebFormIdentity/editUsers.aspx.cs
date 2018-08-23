using Microsoft.AspNet.Identity.Owin;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.ModelBinding;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebFormIdentity.Models;

namespace WebFormIdentity
{
    public partial class editUsers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //Please use   [QueryString]int Id as parameter of your updatemethed , 
        //the [QueryString] attribute populates the Id parameter from QueryString.
        public IQueryable<ApplicationUser> GridView1_GetData([QueryString]int Id)
        {
            return applicationDbContext.Users.Where(u=>u.supplierId==Id);
        }
        ApplicationDbContext applicationDbContext = new ApplicationDbContext();
        // The id parameter name should match the DataKeyNames value set on the control
        public void GridView1_UpdateItem(string id)
        {
            WebFormIdentity.Models.ApplicationUser item = applicationDbContext.Users.Find(id);
            // Load the item here, e.g. item = MyDataLayer.Find(id);
            if (item == null)
            {
                // The item wasn't found
                ModelState.AddModelError("", String.Format("Item with id {0} was not found", id));
                return;
            }


            TryUpdateModel(item);
            if (ModelState.IsValid)
            {
              
                // Save changes here, e.g. MyDataLayer.SaveChanges();
                applicationDbContext.SaveChanges();

            }
        }
    }
}