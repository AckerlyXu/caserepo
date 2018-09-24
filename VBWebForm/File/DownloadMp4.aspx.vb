Public Class DownloadMp4
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs)
        Response.Clear()

        Response.AddHeader("content-disposition", "attachment;filename=myMp4.mp4")

        Response.TransmitFile("/example.mp4")

        Response.End()
    End Sub
End Class