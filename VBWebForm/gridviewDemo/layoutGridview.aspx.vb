Public Class layoutGridview
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            Dim dt As DataTable = New DataTable()
            Dim cols(2) As DataColumn
            cols(0) = New DataColumn("ITEMID")
            cols(1) = New DataColumn("DSC")
            cols(2) = New DataColumn("ACTIVE")
            dt.Columns.AddRange(cols)
            dt.Rows.Add("1", "Desc111111111111111111111111111111111", "Active22222222222222222222222222222222222222222222222222222222222222222")
            dt.Rows.Add("2", "Desc2", "InActive")
            dt.Rows.Add("3", "Desc3", "Active")
            'dt.Rows.Add("4", "Desc4", "Active")
            'dt.Rows.Add("5", "Desc6", "InActive")
            'dt.Rows.Add("6", "Desc9", "InActive")
            'dt.Rows.Add("7", "Desc9", "InActive")
            'dt.Rows.Add("8", "Desc9", "InActive")
            'dt.Rows.Add("89", "Desc9", "InActive")
            'dt.Rows.Add("9", "Desc9", "InActive")
            'dt.Rows.Add("1", "Desc9", "InActive")
            'dt.Rows.Add("6", "Desc9", "InActive")
            'dt.Rows.Add("67", "Desc9", "InActive")
            'dt.Rows.Add("60", "Desc9", "InActive")
            'dt.Rows.Add("64", "Desc9", "InActive")

            ItemGridView.DataSource = dt
            ItemGridView.DataBind()
        End If
    End Sub

End Class