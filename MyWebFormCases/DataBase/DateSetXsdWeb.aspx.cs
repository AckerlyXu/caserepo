using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MyWebFormCases.DataBase.DataSetStartTableAdapters;
namespace MyWebFormCases.DataBase
{
    public partial class DateSetXsdWeb : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //  mySetTableAdapter tableAdapter = new mySetTableAdapter();
            //DataSetStart.mySetDataTable setDataTable= tableAdapter.GetData();
            //  GridView1.DataSource = setDataTable;
            //  GridView1.DataBind();
            DataSetStart.DataTable1DataTable dataTable1s = new DataSetStart.DataTable1DataTable();
            DataTable dataTable = new DataTable();
            DataColumn dataColumn = new DataColumn();
            dataColumn.Unique = true;
        

        }

    }
}