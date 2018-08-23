using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.ListView
{
    public partial class LoopThroughListView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void Display_Page_Routine()
        {
          
            foreach (ListViewItem var1 in ListView_Budget.Items)

            {
                Label Lincome = var1.FindControl(@"dincome") as Label;
                string Lincome_Data = Lincome.Text;
                Label3.Text += Lincome_Data + " &nbsp;&nbsp;&nbsp;";

            }

        }

        protected void ListView1_DataBound(object sender, EventArgs e)
        {
            Display_Page_Routine();
        }
    }
}