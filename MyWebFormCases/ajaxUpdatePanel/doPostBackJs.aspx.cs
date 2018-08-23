using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.ajaxUpdatePanel
{
    public partial class doPostBackJs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void UpdatePanel1_Load(object sender, EventArgs e)
        {
            if (Request["__eventargument"] == "Update-Both")
            {
                PanelHideShow.Visible = true;

                //update stuff;

                PanelHideShow.Visible = false;
            }

           // Debug.WriteLine("Item changed");

        }

        protected void UpdatePanel2_Load(object sender, EventArgs e)
        {
            if (Request["__eventargument"] == "Update-Both")
            {
                PanelHideShow.Visible = true;

                //update stuff

                PanelHideShow.Visible = false;
            }
            //RegisterAsyncTask(new PageAsyncTask(() => Loading()));
        }

        protected void UpdatePanel3_Load(object sender, EventArgs e)
        {
            if (Request["__eventargument"] == "Update-Both")
            {
               

                //update stuff

                PanelHideShow.Visible = false;
                PanelHideShow.Visible = true;
            }
            //RegisterAsyncTask(new PageAsyncTask(() => Loading()));
        }

    
    }
}