Imports System.IO

Public Class test
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Response.AddHeader("Content-Disposition", "attachment;filename=" + "target.pdf")
        Response.Clear()

        Response.WriteFile(Server.MapPath("/File/print.pdf"))


        Response.ContentType = "application/octet-stream;charset=utf-8"
        Response.End()

    End Sub

End Class