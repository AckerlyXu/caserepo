using MyWebFormCases.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebFormCases.Models;

namespace MyWebFormCases.bootstrap
{
    public partial class MakeTableFullOfScreen : System.Web.UI.Page
    {
        SupplyModel model = new SupplyModel();
        protected void Page_Load(object sender, EventArgs e)
        {
            lvwCategories.DataSource = model.Suppliers.ToList();
            lvwCategories.DataBind();
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {

        }
    }
}