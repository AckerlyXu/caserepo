using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace MyWebFormCases.ExtraControls3
{
    public partial class getCheckBox : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GridView1.DataSource = new int[] { 1, 2, 4, 5, 6 };
                GridView1.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            foreach (GridViewRow item in GridView1.Rows)
            {
                if (item.RowType == DataControlRowType.DataRow)
                {
                    HtmlInputCheckBox box = item.Cells[0].FindControl("Checkbox1") as HtmlInputCheckBox;
                    Response.Write(box.Checked +":"+box.Value+ "<br/>");
                }
            }
        }
    }
}