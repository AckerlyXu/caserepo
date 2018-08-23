using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.ExtraControls
{
    public partial class KeepStateViewState : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
           
          
                ViewState["Code"] = txtCode.Text;
              
               
           
            if (!string.IsNullOrEmpty(ViewState["Code"] as string))
            {
                txtCode.Text = ViewState["Code"] as string;
            }
           
        }
    }
}