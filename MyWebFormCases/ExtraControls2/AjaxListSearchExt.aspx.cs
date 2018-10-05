using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.ExtraControls2
{
    public partial class AjaxListSearchExt : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                ArrayList al = new ArrayList();
                al.Add(new { Name = "New Apple", Index = 1 });
                al.Add(new { Name = "Axa button", Index = 2 });
                al.Add(new { Name = "Bww Mmple", Index = 13 });
                al.Add(new { Name = "Bww Cmple", Index = 42 });
                al.Add(new { Name = "Tew vaile", Index = 5 });
                al.Add(new { Name = "Qma bloton", Index = 24 });
                BelongingAdminUnitDDL.DataSource = al;
                BelongingAdminUnitDDL.DataBind();

            }
          
           
        }
    }
}