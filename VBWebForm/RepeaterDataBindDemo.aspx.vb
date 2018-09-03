Public Class RepeaterDataBindDemo
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load


    End Sub

    Protected Sub repeater_ItemDataBound(sender As Object, e As RepeaterItemEventArgs)
        If e.Item.ItemType = ListItemType.Item Or e.Item.ItemType = ListItemType.AlternatingItem Then

            Dim r1 As RadioButton = TryCast(e.Item.FindControl("rad1"), RadioButton)
            Dim option1 As String = DataBinder.Eval(e.Item.DataItem, "Option1")
            Dim r2 As RadioButton = TryCast(e.Item.FindControl("rad2"), RadioButton)
            Dim r3 As RadioButton = TryCast(e.Item.FindControl("rad3"), RadioButton)
        End If
    End Sub
End Class