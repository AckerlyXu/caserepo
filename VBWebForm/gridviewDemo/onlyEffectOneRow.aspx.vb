Public Class onlyEffectOneRow
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            Dim ints As List(Of Int32) = New List(Of Integer)
            For index = 1 To 10
                ints.Add(1)
            Next
            GridView1.DataSource = ints
            GridView1.DataBind()
        End If


    End Sub

    Protected Sub GridView1_SelectedIndexChanged(sender As Object, e As EventArgs)
        Dim chkChosen As DropDownList = CType(GridView1.SelectedRow.FindControl("DropDownList1"), DropDownList)
        Dim Coboneno As TextBox = CType(GridView1.SelectedRow.FindControl("TextBox1"), TextBox)
        If chkChosen.SelectedValue.ToString = "2" Then

            Coboneno.Enabled = False

        ElseIf chkChosen.SelectedValue.ToString = "1" Then
            Coboneno.Enabled = True
            ' 
        End If

    End Sub

    Protected Sub DropDownList1_SelectedIndexChanged(sender As Object, e As EventArgs)
        Dim chkChosen As DropDownList = CType(sender, DropDownList)
        Dim Coboneno As TextBox = CType(chkChosen.NamingContainer.FindControl("TextBox1"), TextBox)
        If chkChosen.SelectedValue.ToString = "2" Then

            Coboneno.Enabled = False

        ElseIf chkChosen.SelectedValue.ToString = "1" Then
            Coboneno.Enabled = True

        End If
    End Sub
End Class