Public Class InsertAvoidMitupleSubmit
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs)
        Label1.Text = "please don't double click"
        'Dim btn As Button = CType(sender, Button)
        'btn.Visible = False
        Button1.Visible = False
    End Sub

    Protected Sub ListView1_PagePropertiesChanged(sender As Object, e As EventArgs)
        'Dim list As ListView = ListView1
        'Dim btn As Button = CType(list.FindControl("Button1"), Button)
        Button1.Visible = True
        Label1.Text = ""
    End Sub
End Class