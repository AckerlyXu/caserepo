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
            cryRpt.Load(Server.MapPath("~/CrystalReport1.rpt"));
            crystalReportViewer1.ReportSource = cryRpt;
            cryRpt.Refresh();

            crystalReportViewer1.RefreshReport();
            crystalReportViewer1.PrintMode = CrystalDecisions.Web.PrintMode.Pdf;

        }
    }
}