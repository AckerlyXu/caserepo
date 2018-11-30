Imports CrystalDecisions.CrystalReports.Engine

Public Class crystalStart
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim cryRpt As ReportDocument = New ReportDocument()
        cryRpt.Load(Server.MapPath("/CrystalReport1.rpt"))
        CrystalReportViewer1.ReportSource = cryRpt



    End Sub

End Class