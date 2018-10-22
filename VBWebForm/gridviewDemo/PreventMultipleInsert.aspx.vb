Public Class PreventMultipleInsert
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub ListView1_PagePropertiesChanged(sender As Object, e As EventArgs)
        Button1.Visible = True

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs)
        Button1.Visible = False
    End Sub
End Class