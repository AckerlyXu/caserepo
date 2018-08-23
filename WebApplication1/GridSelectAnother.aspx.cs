using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class GridSelectAnother : System.Web.UI.Page
    {
        //the dbcontext object
        //Model1Container container = new Model1Container();
        protected void Page_Load(object sender, EventArgs e)
        {
            //Servers server = container.Servers.Find(1);
            //List<Contacts> contacts = server.Tag_services1.Contact_Service.Select(cs => cs.Contact).ToList();
            //gv.DataSource = contacts;
            //gv.DataBind();
        }

        protected void gridview_SelectedIndexChanged(object sender,EventArgs e)
        {
            
           //get the id of selected server
          //  int b = (int)gridview.SelectedDataKey.Value;
          //Servers server=  container.Servers.Find(b);

          //  // use linq to find all the contacts related to the selected server
          // List<Contacts> contacts = server.Tag_services1.Contact_Service.Select(cs=>cs.Contact).ToList();
          //  gv.DataSource = contacts;
          //  gv.DataBind();
            
        }

        protected void gv_RowDataBound(object sender, GridViewRowEventArgs e)
        {
          //Tag_services tag_Services=  e.Row.DataItem as Tag_services;
          //  if (tag_Services != null)
          //  {
          //  Name    tag_Services.Contact_Service.Select(con => con.Contact).Select(c => c.firstName);
          //  }
        }
    }
}