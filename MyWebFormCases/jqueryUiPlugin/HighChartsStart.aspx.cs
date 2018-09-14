using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.jqueryUiPlugin
{
    public partial class HighChartsStart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                hdn_v1.Value = "255";

                hdn_Data.Value = "Categories,A,B,C" + "'\n'" + "Total Points,251,253,254" + "'\n'" + "mydata,'annotation1','annotation1','no annotation'";
               // hdn_Data.Value += "Categories,A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,p,q,r,s,t,u,v,w,x,y,z,A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,p,q,r,s,t,u,v,w,x,y,z" + "'\n'" + "Total Points,199,253,252,253,344,251,259,252,253,233,222,121,234,123,123,187,182,183,184,185,186,187,188,189,190,199,253,252,253,344,251,259,252,253,233,222,121,234,123,123,187,182,183,184,185,186,187,188,189,190";

            }
        }
    }
}