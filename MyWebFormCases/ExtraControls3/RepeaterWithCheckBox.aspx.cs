using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.ExtraControls3
{
    public partial class RepeaterWithCheckBox : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ArrayList list = new ArrayList();
                list.Add(new { fileName = "fileName1", fileId = 12 });
                list.Add(new { fileName = "fileName2", fileId = 13 });
                list.Add(new { fileName = "fileName3", fileId = 14 });
                RptTabelaServicos.DataSource = list;
                RptTabelaServicos.DataBind();
            }
        }
    }
}