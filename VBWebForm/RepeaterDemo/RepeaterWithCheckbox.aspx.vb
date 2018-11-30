Public Class RepeaterWithCheckbox
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then


            Dim list As ArrayList = New ArrayList()
            list.Add(New With {.fileName = "fileName1", .fileId = 12})
            list.Add(New With {.fileName = "fileName2", .fileId = 13})
            list.Add(New With {.fileName = "fileName3", .fileId = 14})
            RptTabelaServicos.DataSource = list
            RptTabelaServicos.DataBind()

        End If
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs)
        'loop through all the items in the repeater 
        For Each item As RepeaterItem In RptTabelaServicos.Items
            If item.ItemType = ListItemType.Item Or item.ItemType = ListItemType.AlternatingItem Then
                ' get the checkbox in the item
                Dim checkBox As CheckBox = CType(item.FindControl("ChkSelecionaServico"), CheckBox)
                If checkBox.Checked Then
                    Dim hidden As HiddenField = CType(item.FindControl("HiddenField1"), HiddenField)
                    Response.Write("you have selected the file with id :" + hidden.Value + "<br/>")
                End If
            End If
        Next

    End Sub
End Class