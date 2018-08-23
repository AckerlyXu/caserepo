using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.DataBase
{
    public partial class DataBaseWithMituThread : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void import_Click(object sender, EventArgs e)
        {
            DataTable Data = new DataTable();
            var recordsValid = Data.Rows.OfType<DataRow>().Skip(5);
           
        }
    }
}