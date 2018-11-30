Public Class DownLoadImage
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs)
        Response.Clear()
        ' Response.ClearContent()

        Response.AddHeader("Content-Disposition", "attachment;filename=a.jpg")

        '  Response.AddHeader("Content-Transfer-Encoding", "binary")
        'Response.ContentType = "application/octet-stream"

        Response.WriteFile(Server.MapPath("/images/" + TextBox1.Text))
        Response.Flush()
        Response.End()
    End Sub
End Class