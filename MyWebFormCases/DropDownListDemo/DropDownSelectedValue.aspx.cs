using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.DropDownListDemo
{
    public partial class DropDownSelectedValue : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ArrayList list = new ArrayList() {
                new {SinterLottype='A'},

                new {SinterLottype='B'},
                new {SinterLottype='B'}
            };
            GridView1.DataSource = list;
            GridView1.DataBind();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
          
        }
    }
}