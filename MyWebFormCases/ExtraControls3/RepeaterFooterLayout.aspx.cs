using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.ExtraControls3
{
    public partial class RepeaterFooterLayout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ArrayList list = new ArrayList();
                list.Add(new { Code = "code" });
                list.Add(new { Code = "code" });
               
                rptrActivities.DataSource = list;
                rptrActivities.DataBind();
            }
        }
    }
}