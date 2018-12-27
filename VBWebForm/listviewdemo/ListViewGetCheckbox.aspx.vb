Public Class ListViewGetCheckbox
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim strs As String() = HiddenField2.Value.Split(",")
        'get data from chekced checkbox
        Dim ChkValue As New List(Of String)()
        For Each item As ListViewItem In ListViewHRDFormIzin.Items
            Dim ck As HiddenField = DirectCast(item.FindControl("HiddenField1"), HiddenField)
            If strs.Contains(ck.Value) Then
                ChkValue.Add(DirectCast(item.FindControl("lbl"), Label).Text)
            End If
        Next
        For Each itms As String In ChkValue
            Response.Write("<script>alert('Value Selected: " + itms + "')</script>")
        Next
        Response.Write("<script>window.location.href='ListViewGetCheckbox.aspx';</script>")
    End Sub
End Class