Public Class listViewWithRepeater
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub ListView1_ItemDataBound(sender As Object, e As ListViewItemEventArgs)
        If e.Item.ItemType = ListViewItemType.DataItem Then
            If DataBinder.Eval(e.Item.DataItem, "order").ToString() = "1" Then
                'if dropdown mode is selected bind data to the dropdownlist
                Dim drop As DropDownList = TryCast(e.Item.FindControl("options"), DropDownList)
                drop.Items.Add(New ListItem(DataBinder.Eval(e.Item.DataItem, "option1"), 1))
                drop.Items.Add(New ListItem(DataBinder.Eval(e.Item.DataItem, "option2"), 2))
                drop.Items.Add(New ListItem(DataBinder.Eval(e.Item.DataItem, "option3"), 3))
                e.Item.FindControl("tr").Visible = False
                e.Item.FindControl("style").Visible = False
            Else
                'if dropdown mode is   not   selected  make it invisible
                Dim drop As DropDownList = TryCast(e.Item.FindControl("options"), DropDownList)
                drop.Visible = False
            End If

        End If



    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs)

        For Each ri As ListViewItem In ListView1.Items
            Dim question As String = TryCast(ri.FindControl("questionLabel"), Label).Text
            If ri.ItemType = ListViewItemType.DataItem Then

                Dim drop As DropDownList = TryCast(ri.FindControl("options"), DropDownList)
                ' if dropdownlist is visible , get the selected answer through the dropdownlist
                If drop.Visible Then

                    Response.Write("you questin :" + question + "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; you selected option: " + drop.SelectedItem.Text + "<br/>")
                Else
                    ' else get the the answer from radiobutton
                    Dim r1 As RadioButton = TryCast(ri.FindControl("rad1"), RadioButton)
                    Dim r2 As RadioButton = TryCast(ri.FindControl("rad2"), RadioButton)
                    Dim r3 As RadioButton = TryCast(ri.FindControl("rad3"), RadioButton)
                    Dim l1 As Label = TryCast(ri.FindControl("Option1"), Label)
                    Dim l2 As Label = TryCast(ri.FindControl("Option2"), Label)
                    Dim l3 As Label = TryCast(ri.FindControl("Option3"), Label)

                    Dim answer As String


                    If True Then

                    ElseIf True Then
                    End If
                    If r1.Checked Then
                        answer = l1.Text
                    ElseIf r2.Checked Then

                        answer = l2.Text
                    ElseIf r3.Checked Then

                        answer = l3.Text
                    Else
                        answer = "you have no answer"
                    End If

                    Response.Write("you question: " + question + "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; you selected option: " + answer + "<br/>")

                End If

            End If



        Next
    End Sub
End Class