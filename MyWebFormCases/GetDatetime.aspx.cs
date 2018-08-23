using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebFormCases
{
    public partial class GetDatetime : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                DateTime dateTime =DateTime.Parse(dobs.Text) ;
           
            }
            //    ScriptManager.RegisterStartupScript(this, this.GetType(),"myScript", "setTimeout( function () {" +
            //  "$('#label1').html('');" +

            //"},2000)",true);
        }
    }
}