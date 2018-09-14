using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.gridview
{
    public partial class dynamiclyAddColumnsLoseOrder : System.Web.UI.Page
    {

       
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable peopleCourses = new DataTable();
                peopleCourses.Columns.Add(new DataColumn("Id", typeof(int)));
                peopleCourses.Columns.Add(new DataColumn("Name", typeof(string)));
                peopleCourses.Columns.Add(new DataColumn("Position", typeof(string)));
                for (int i = 0; i < 10; i++)
                {
                    peopleCourses.Rows.Add(i, "name", "position");
                }
                GridView1.DataSourceID = null;
                GridView1.BackColor = System.Drawing.Color.White;
                GridView1.DataSource = peopleCourses;
                GridView1.DataBind();
            }
        }
    }
}