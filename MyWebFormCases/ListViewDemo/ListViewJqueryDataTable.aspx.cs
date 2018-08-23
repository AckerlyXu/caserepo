using MyWebFormCases.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebFormCases.Models;

namespace MyWebFormCases.ListView
{
    public partial class ListViewJqueryDataTable : System.Web.UI.Page
    {
        NorthWindDbContext context = new NorthWindDbContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lvwDt.DataSource = context.Customers.ToList();
                lvwDt.DataBind();
            }
          


        }

        protected void lvwDt_ItemEditing(object sender, ListViewEditEventArgs e)
        {
            lvwDt.EditIndex = e.NewEditIndex;
            lvwDt.DataSource = context.Customers.ToList();
            lvwDt.DataBind();

        }

      

        protected void lvwDt_ItemCanceling(object sender, ListViewCancelEventArgs e)
        {
            if (e.CancelMode == ListViewCancelMode.CancelingEdit)
            {
                lvwDt.EditIndex = -1;
                lvwDt.DataSource = context.Customers.ToList();
                lvwDt.DataBind();
            }
        }

        protected void lvwDt_ItemUpdating(object sender, ListViewUpdateEventArgs e)
        {
            
         ListViewItem item=   lvwDt.Items[e.ItemIndex];
            string id = lvwDt.DataKeys[e.ItemIndex].Value.ToString();
            string compantName = (item.FindControl("txtval") as TextBox).Text;
          Customer customer=  context.Customers.Find(id);
            customer.CompanyName = compantName;
            context.SaveChanges();
            lvwDt.EditIndex = -1;
            lvwDt.DataSource = context.Customers.ToList();
            lvwDt.DataBind();
           
        }
        
    }
}