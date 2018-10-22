Public Class ShowValueInList
    Inherits System.Web.UI.Page
    Public ListTgl As New List(Of String)()
    Public TxtTglCuti As New List(Of TextBox)()
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        For index = 1 To 12
            TxtTglCuti.Add(New TextBox())
        Next


        ListTgl.Add("the first content")
        ListTgl.Add("the second content")
        ListTgl.Add("the third content")
        ListTgl.Add("the forth content")

        For index = 0 To ListTgl.Count - 1
            TxtTglCuti(index).Text = ListTgl(index)
            Me.form1.Controls.Add(TxtTglCuti(index))
        Next




        'For index = 1 To 12
        '    Dim textbox As TextBox = Me.FindControl("TxtTglCuti" & index)
        '    If index <= ListTgl.Count Then
        '        textbox.Text = ListTgl(index - 1)

        '    Else
        '        textbox.Visible = False
        '    End If
        'Next
        'For index = 0 To ListTgl.Count - 1
        '    Dim textbox As TextBox = Me.FindControl("TxtTglCuti" & (index + 1))
        '    textbox.Text = ListTgl(index)
        'Next


    End Sub

End Class