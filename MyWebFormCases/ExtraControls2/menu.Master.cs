using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.ExtraControls2
{
    public partial class menu : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
          
                foreach (MenuItem item in menuBar.Items)
                {
                    if (item.Selectable == true & Request.Url.AbsoluteUri.ToLower().Contains(Page.ResolveUrl(item.NavigateUrl.ToLower())) && Page.ResolveUrl(item.NavigateUrl.ToLower())!="")
                    {
                        item.Selected = true;
                    }
                    string pathname = Request.AppRelativeCurrentExecutionFilePath;
                    foreach (MenuItem item2 in item.ChildItems)
                    {
                        item2.Selected = item2.NavigateUrl.Equals(pathname, StringComparison.InvariantCultureIgnoreCase);
                        if (item2.Selected)
                        {
                           

                            item2.Parent.Selected = true;
                            item2.Selected = true;
                        }
                    }
                }
               
            }
        }

        protected void menuBar_MenuItemClick(object sender, MenuEventArgs e)
        {
          
        }
    }
}