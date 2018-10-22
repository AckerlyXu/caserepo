using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.javascriptTwo
{
    public partial class TargetExe : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            ListBox1.Items.Clear();
            switch (DropDownList1.SelectedValue)
            {
                case "ddl item 1":
                    {
                        ListBox1.Items.Add("list item 1");
                        ListBox1.Items.Add("list item 2");
                        ListBox1.Items.Add("list item 3");
                        break;
                    }
                case "ddl item 2":
                    {
                        ListBox1.Items.Add("list item 4");
                        ListBox1.Items.Add("list item 5");
                        ListBox1.Items.Add("list item 6");
                        break;
                    }

            }
        }

        protected void btnRunReport_Click(object sender, EventArgs e)
        {
            List<string> lst = new List<string>();
            foreach (int n in ListBox1.GetSelectedIndices())
            {
                lst.Add(ListBox1.Items[n].Value);
            }

            Context.Items["reportlist"] = lst;
            Server.Transfer("Page2.aspx");
        }

    }
}