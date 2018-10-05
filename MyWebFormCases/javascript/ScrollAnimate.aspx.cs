using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.javascript
{
    public partial class ScrollAnimate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ArrayList arrayList = new ArrayList();
                for (int i = 0; i < 1500; i++)
                {
                    arrayList.Add(new { itemid = i, dsc = i, active = "active" });
                }
                ItemGridView.DataSource = arrayList;
                ItemGridView.DataBind();
            }
        }

        protected void ItemGridView_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            ItemGridView.PageIndex = e.NewPageIndex;
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < 1500; i++)
            {
                arrayList.Add(new { itemid = i, dsc = i, active = "active" });
            }
            ItemGridView.DataSource = arrayList;
            ItemGridView.DataBind();
        }
    }
}