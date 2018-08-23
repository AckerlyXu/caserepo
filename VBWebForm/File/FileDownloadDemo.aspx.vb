Public Class FileDownloadDemo
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load


    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs)
        
        Response.AddHeader("Content-Disposition", "attachment;filename=target.pdf")
        Dim path As String = ifrm_dcbform.Attributes.Item("src")

        Response.WriteFile(Server.MapPath(path))



    End Sub
End Class