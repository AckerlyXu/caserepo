using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.Identity
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] != null)
            {
                // In index.aspx , if there is user data in session ,please get the data and show user message.
                Models.User user = Session["user"] as Models.User;
                userMsg.Text = "welcome " + user.Username;
            }
        }
    }
}