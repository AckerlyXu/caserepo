Public Class DetailsViewEmptyData
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Dim table As DataTable = New DataTable()
        table.Columns.AddRange(New DataColumn() {New DataColumn("key1"), New DataColumn("value1")})
        table.Rows.Add("1", "2")
        DetailsView1.DataSource = table
        ' If table.Rows.Count > 0 Then
        DetailsView1.DataBind()
        ' End If
        DetailsView1.Height = 0
        DetailsView3.DataSource = table
        '  If table.Rows.Count > 0 Then
        DetailsView3.DataBind()
        DetailsView3.Height = 0
        '  End If
        table = New DataTable()
        DetailsView2.DataSource = table

        ' If table.Rows.Count > 0 Then
        DetailsView2.DataBind()
        DetailsView2.Height = 0
        ' End If

    End Sub

End Class