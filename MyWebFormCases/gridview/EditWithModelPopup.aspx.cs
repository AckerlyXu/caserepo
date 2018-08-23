using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.gridview
{
    public partial class EditWithModelPopup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //simulate data from the database
                List<Entry> list = new List<Entry>();
                list.Add(new Entry { EntryNo = 1, Code = "code1", Description = "description1", Months = 1 });
                list.Add(new Entry { EntryNo = 2, Code = "code2", Description = "description2", Months = 2 });
                list.Add(new Entry { EntryNo = 3, Code = "code3", Description = "description3", Months = 3 });
                list.Add(new Entry { EntryNo = 4, Code = "code4", Description = "description4", Months = 4 });
                list.Add(new Entry { EntryNo = 5, Code = "code5", Description = "description1", Months = 5 });

                gvwCategories.DataSource = list;
                gvwCategories.DataBind();
            }
        }

        protected void gvwCategories_RowCommand(object sender, GridViewCommandEventArgs e) {

            if (e.CommandName == "EditRecord") { Button btndetails = (Button)e.CommandSource;
                GridViewRow gvrow = (GridViewRow)btndetails.NamingContainer; using (GridViewRow row = (GridViewRow)(btndetails).Parent.Parent) {

                    txtDescription.Text = row.Cells[2].Text;
                    ddlMonths.SelectedValue = row.Cells[3].Text;
                    txtCode.Text = row.Cells[1].Text;
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "$('#myEditModal').modal('show')", true);
                } } }

        protected void btnInsert_Click(object sender, EventArgs e)
        {

        }
    }
    public class Entry
    {
        public int EntryNo { get; set; }
        public string  Code { get; set; }
        public string Description { get; set; }
        public int Months { get; set; }
    }
}