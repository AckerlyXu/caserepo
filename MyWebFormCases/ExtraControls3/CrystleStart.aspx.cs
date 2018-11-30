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
    public partial class CrystleStart : System.Web.UI.Page
    {
        private static string constr = ConfigurationManager.ConnectionStrings["NorthwindConnectionString"].ConnectionString;
       
        protected void Page_Load(object sender, EventArgs e)
        {
          
            ReportDocument cryRpt = new ReportDocument();
            cryRpt.Load(Server.MapPath("/CrystalReport1.rpt"));
            crystalReportViewer1.ReportSource = cryRpt;
            cryRpt.Refresh();
          
            crystalReportViewer1.RefreshReport();
            crystalReportViewer1.PrintMode = CrystalDecisions.Web.PrintMode.Pdf;
           
            //using (SqlDataAdapter adapter = new SqlDataAdapter("select * from customers", constr))
            //{


            //    DataSet set= new DataSet();
            //    adapter.Fill(set);
            //    ReportDocument doc = new ReportDocument();
            //    doc.Load(Server.MapPath("/CrystalReport1.rpt"));
            //    doc.SetDataSource(set);
            //    CrystalReportViewer1.ReportSource = doc;
            //    doc.Refresh();

            //    CrystalReportViewer1.RefreshReport();


            //}
        }
    }
}