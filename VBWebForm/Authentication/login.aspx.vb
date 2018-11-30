Public Class login
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs)
        If username.Text = "username" And password.Text = "password" Then
            FormsAuthentication.RedirectFromLoginPage(username.Text, False)
            Session("Postdata") = Postdata.Text
            Session("Predata") = Predata.Text
        Else
            Response.Write("wrong")
        End If
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs)
        FormsAuthentication.SignOut()
        Session.Remove("Postdata")
        Session.Remove("Predata")

    End Sub
End Class