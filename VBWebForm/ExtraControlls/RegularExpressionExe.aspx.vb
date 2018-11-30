Public Class RegularExpressionExe
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim ex As String = ""
        If DropDownList1.SelectedItem.Text = "germany" Then
            ex = ""

        Else
            ex = "\d+"
        End If
        If String.IsNullOrEmpty(ex) Then

            RegularExpressionValidator1.Enabled = False
        Else
            RegularExpressionValidator1.ValidationExpression = ex
            RegularExpressionValidator1.Enabled = True

        End If



    End Sub

End Class