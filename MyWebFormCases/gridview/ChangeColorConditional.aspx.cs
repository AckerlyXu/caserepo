using MyWebFormCases.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebFormCases.Models;

namespace MyWebFormCases.gridview
{
    public partial class ChangeColorConditional : System.Web.UI.Page
    {
        SupplyModel model = new SupplyModel();
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataSource = model.Suppliers.Include("Contacts").ToList();
            GridView1.DataBind();
        }

        protected void Yadsrch_Click(object sender, EventArgs e)
        {

        }
    }
}