using MyWebFormCases.Models;
using System;
using System.Collections.Generic;

using System.Linq;
using System.Web;
using System.Web.ModelBinding;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using WebFormCases.Models;

namespace WebFormCases
{
    public partial class AddContacts : System.Web.UI.Page
    {
        SupplyModel model = new SupplyModel();
        protected void Page_Load(object sender, EventArgs e)
        {
            HtmlGenericControl htmlGenericControl = new HtmlGenericControl();
            
            if (!IsPostBack)
            {
                ViewState["SID"] = Request["SID"];
                Label3.Text ="selected SID is "+ Request["SID"];
            }
          //  \w + ([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*
        }

       protected void Button1_Click(object sender, EventArgs e)
        {
            Contact contact = new Contact();

            contact.Name = TextBox1.Text;
            
            int SID = Convert.ToInt32(ViewState["SID"]);
            Supplier supplier = model.Suppliers.Find(SID);
            contact.Supplier = supplier;
            model.Contacts.Add(contact);
            model.SaveChanges();

        }
    }
}