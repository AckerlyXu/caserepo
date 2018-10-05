Public Class ToMyPage
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim page As Page = Me.PreviousPage

    End Sub

End Class