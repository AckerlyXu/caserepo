using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.jqueryUiPlugin
{
    public partial class jqueryDataTableStart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BuildTable();
               
            }

        }
        private void BuildTable()
        {
            StringBuilder builder = new StringBuilder();
            builder.Append("<table id=\"tblExample\" >");
            builder.Append("<thead><tr><th>Column 1</th><th>Column 2</th></tr></thead>");
            builder.Append("<tbody>");
            builder.Append("<tr><td>Row 1 Data 1</td><td>Row 1 Data 2</td></tr>");
            builder.Append("<tr><td>Row 2 Data 1</td><td>Row 2 Data 2</td></tr>");
            builder.Append("</tbody></table>");
            ltDataTable.Text = builder.ToString();
        }

    }
}