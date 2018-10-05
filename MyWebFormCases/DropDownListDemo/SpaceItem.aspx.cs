using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.DropDownListDemo
{
    public partial class SpaceItem : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ddlfruits.DataSource = new List<string>() { "","Apple", "Banana", "Orange" };
                ddlfruits.DataBind();
              
            }
        }
    }
}