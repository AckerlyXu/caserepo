using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.jqueryUiPlugin
{
    public partial class highchars3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                hdn_Data1.Value = "BatchId,A-5657,B-7687,C-787" + "'\n'" + "value,0.966,0.864,0.881" + "'\n'" + "mydata,'annotation1','annotation1','no annotation'" + "'\n'" + "datetime,'2018-11-26 13:38:20.860','2018-11-26 13:54:51.500','2018-11-26 14:31:48.430'";
            


            }

        }


     

    }
}