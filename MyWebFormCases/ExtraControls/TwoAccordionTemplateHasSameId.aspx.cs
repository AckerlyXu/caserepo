using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.ExtraControls
{
    public partial class TwoAccordionTemplateHasSameId : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
    }
    public class Model
    {
        public int Id { get; set; }
        public string Name { get; set; }

        public string Address { get; set; }
    }
}