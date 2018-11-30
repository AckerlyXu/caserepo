Public Class AddOneEditLogic
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then

            Dim list As ArrayList = New ArrayList()
            list.Add(New With {.item_number = 5, .quantity = 6})
            list.Add(New With {.item_number = 3, .quantity = 4})
            list.Add(New With {.item_number = 1, .quantity = 2})
            list.Add(New With {.item_number = 2, .quantity = 9})
            list.Add(New With {.item_number = 4, .quantity = 12})
            list.Add(New With {.item_number = 6, .quantity = 11})
            GridView1.DataSource = list
            GridView1.DataBind()
        End If

    End Sub

    Protected Sub Edit_Click(sender As Object, e As EventArgs)
        For Each item As GridViewRow In GridView1.Rows
            If item.RowType = DataControlRowType.DataRow Then
                Dim label As Label = CType(item.FindControl("Label1"), Label)
                Dim box As TextBox = CType(item.FindControl("TextBox1"), TextBox)
                label.Visible = False
                box.Visible = True
            End If
        Next
    End Sub

    'Protected Sub Update_Click(sender As Object, e As EventArgs)
    '    For Each item As GridViewRow In GridView1.Rows
    '        If item.RowType = DataControlRowType.DataRow Then
    '            Dim label As Label = CType(item.FindControl("Label1"), Label)  'get the original value
    '            Dim box As TextBox = CType(item.FindControl("TextBox1"), TextBox)  ' get the data to update
    '            If CInt(label.Text) < CInt(box.Text) Then
    '                Response.Write("you could update" + "<br/>")
    '                ' you could update the data in database  here
    '                Response.Write("id is :" + item.Cells(0).Text + "<br/>")
    '            Else
    '                Response.Write("you could not update" + "<br/>")

    '            End If


    '            label.Visible = True
    '            box.Visible = False
    '        End If
    '    Next
    'End Sub

    Protected Sub TextBox1_TextChanged(sender As Object, e As EventArgs)
        Dim box As TextBox = CType(sender, TextBox)

        Dim hidden As HiddenField = CType(box.NamingContainer.FindControl("HiddenField1"), HiddenField) 'get the hidden which records the index of current row
        Dim quantity As String = CType(box.NamingContainer, GridViewRow).Cells(1).Text  'get the value of quantity
        Dim count As Int32 = -1
        If CInt(box.Text) < CInt(quantity) Then        ' check whether the texted value is bigger than quantity

            For Each item As GridViewRow In GridView1.Rows   ' if not, make the following row invisible
                If item.RowType = DataControlRowType.DataRow Then
                    count = count + 1
                    If count > CInt(hidden.Value) Then
                        item.Visible = False
                    End If
                End If
            Next

        End If

        If CInt(box.Text) >= CInt(quantity) Then    ' if  so ,make the following row visible

            For Each item As GridViewRow In GridView1.Rows
                If item.RowType = DataControlRowType.DataRow Then
                    count = count + 1
                    If count > CInt(hidden.Value) Then
                        item.Visible = True
                    End If
                End If
            Next

        End If


    End Sub
End Class