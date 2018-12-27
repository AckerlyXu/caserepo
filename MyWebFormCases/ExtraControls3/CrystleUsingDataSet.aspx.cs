using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.Shared;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.ExtraControls3
{
    public partial class CrystleUsingDataSet : System.Web.UI.Page
    {
        private static string constr = ConfigurationManager.ConnectionStrings["NorthwindConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

            using (SqlDataAdapter adapter = new SqlDataAdapter("select * from customers", constr))
            {


                DataSet set = new DataSet();
                adapter.Fill(set);
                ReportDocument doc = new ReportDocument();
                doc.Load(Server.MapPath("~/ExtraControls3/CrystalReport2.rpt"));
               
               
                doc.Refresh();
                doc.SetDataSource(set);


                doc.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, false, "Details");
                
                //}
            }
        }
    }
}