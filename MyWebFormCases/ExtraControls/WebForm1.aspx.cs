using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.ExtraControls
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                List<Model> list1 = new List<Model> { new Model { Id = 1, Name = "Accordion1myName1", Address = "Accordion1myAddress1" },
                new Model { Id = 2, Name = "Accordion1myName2", Address = "Accordion1myAddress2" },
                new Model { Id = 3, Name = "Accordion1myName3", Address = "Accordion1myAddress3" },
                new Model { Id = 4, Name = "Accordion1myName4", Address = "Accordion1myAddress4" },
                new Model { Id = 5, Name = "Accordion1myName5", Address = "Accordion1myAddress5" }


            };

                List<Model> list2 = new List<Model> { new Model { Id = 1, Name = "Accordion2myName1", Address = "Accordion2myAddress1" },
                new Model { Id = 2, Name = "Accordion2myName2", Address = "Accordion2myAddress2" },
                new Model { Id = 3, Name = "Accordion2myName3", Address = "Accordion2myAddress3" },
                new Model { Id = 4, Name = "Accordion2myName4", Address = "Accordion2myAddress4" },
                new Model { Id = 5, Name = "Accordion2myName5", Address = "Accordion2myAddress5" }
                };
                Accordion1.DataSource = list1;
                Accordion1.DataBind();
                Accordion2.DataSource = list2;
                Accordion2.DataBind();

            }
        }
    }
}