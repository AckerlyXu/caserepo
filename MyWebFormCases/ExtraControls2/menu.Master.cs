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
        protected void Page_Init(object sender, EventArgs e)
        {
            if (Session["flag"] != null)
            {
                Panel1.Controls.Clear();
                Label label = new Label();
                label.Text = Session["flag"].ToString();
                label.ID = "flag";
                Panel1.Controls.Add(label);
            }
          
        }
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
          
            //    foreach (MenuItem item in menuBar.Items)
            //    {
            //        if (item.Selectable == true & Request.Url.AbsoluteUri.ToLower().Contains(Page.ResolveUrl(item.NavigateUrl.ToLower())) && Page.ResolveUrl(item.NavigateUrl.ToLower())!="")
            //        {
            //            item.Selected = true;
            //        }
            //        string pathname = Request.AppRelativeCurrentExecutionFilePath;
            //        foreach (MenuItem item2 in item.ChildItems)
            //        {
            //            item2.Selected = item2.NavigateUrl.Equals(pathname, StringComparison.InvariantCultureIgnoreCase);
            //            if (item2.Selected)
            //            {
            //                //record the previous  text of parent
            //                placeHolder.Value = item2.Parent.Text;
            //               // set the text of parent to placeHolder to identity 
            //                item2.Parent.Text = "placeHolder";
            //               item2.Selected = true;
            //            }
            //        }
            //    }
               
            }
        }

        protected void menuBar_MenuItemClick(object sender, MenuEventArgs e)
        {
          
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label label = new Label();
            label.Text = "only in button click";
            label.ID = "flag";
            Panel1.Controls.Clear();
            Panel1.Controls.Add(label);
            Session["flag"] = "from button click";


        }
    }
}