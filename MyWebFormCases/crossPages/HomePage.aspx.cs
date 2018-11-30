using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.crossPages
{
    public partial class HomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
             Uri uri=   Request.UrlReferrer;
                if (uri != null)
                {
           
                  string pageName=  uri.AbsolutePath.Substring(uri.AbsolutePath.LastIndexOf("/")+1, uri.AbsolutePath.LastIndexOf(".") - uri.AbsolutePath.LastIndexOf("/"));
                    LinkButton btn = new LinkButton();
                          btn.PostBackUrl = uri.AbsolutePath;
                          btn.Text = pageName;
                    Panel1.Controls.Add(btn);
                    //if(uri.AbsolutePath == "/crossPages/FirstPage.aspx")
                    //  {
                    //      LinkButton btn = new LinkButton();
                    //      btn.PostBackUrl = uri.AbsolutePath;
                    //      btn.Text = "FirstPage";
                    //      Panel1.Controls.Add(btn); 
                    //      MenuItem item = new MenuItem();
                    //      item.Text = "FirstPage";
                    //      item.NavigateUrl = "/crossPages/FirstPage.aspx";
                    //      Menu1.Items.Add(item);
                    //  }
                    //  if (uri.AbsolutePath == "/crossPages/SecondPage.aspx")
                    //  {

                    //      MenuItem item = new MenuItem();
                    //      item.Text = "SecondPage";
                    //      item.NavigateUrl = "/crossPages/SecondPage.aspx";
                    //      Menu1.Items.Add(item);
                    //  }
                }
            }
        }
    }
}