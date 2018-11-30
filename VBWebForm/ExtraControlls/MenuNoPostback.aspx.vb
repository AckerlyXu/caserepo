Public Class MenuNoPostback
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Label1.Text = "No PostBack yet"

        If Page.IsPostBack Then

            Label1.Text = "Page is posted back!"
        End If
    End Sub

End Class