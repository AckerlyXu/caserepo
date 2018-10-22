using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.gridview
{
    public partial class DatePickerAndGridView : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            //get the edit row
            GridViewRow gvr = this.GridView1.Rows[this.GridView1.EditIndex];
            //get the date in the textbox
            TextBox textBox = (TextBox)gvr.FindControl("AdministerDate");
            //convert it to datetime
           DateTime time= DateTime.ParseExact(textBox.Text, "dd/MM/yyyy", System.Globalization.CultureInfo.InvariantCulture);
            //add it to the collection which stores data to be updated
            e.NewValues["AdministerDate"] = time;
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            e.Row.RowState = DataControlRowState.Edit;
            Response.Write(e.Row.RowType); 
        }

       
    }
}