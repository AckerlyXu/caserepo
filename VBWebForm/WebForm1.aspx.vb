Imports System.Net

Public Class WebForm1
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim client As WebClient = New WebClient()
        Dim strurl As String = "http://localhost:55106/Handler1.ashx?id=1 ( ? "
        Dim strReturn As String = client.DownloadString(strurl)
        Response.Write(strReturn)


    End Sub

End Class