Public Class EncryptProblem
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim word As String = Helpers.Crypto.HashPassword("typelaj")
        Response.Write(word)

    End Sub

End Class