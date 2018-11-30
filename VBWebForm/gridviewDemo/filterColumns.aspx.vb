Public Class filterColumns
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Private record(4) As Int32   'use an array to record the columns
    Protected Sub GridView1_RowDataBound(sender As Object, e As GridViewRowEventArgs)
        If e.Row.RowType = DataControlRowType.DataRow Then
            For index = 0 To e.Row.Cells.Count - 1

                If e.Row.Cells(index).Text <> "&nbsp;" Then
                    record(index) = 1
                End If
            Next
        End If
    End Sub

    Protected Sub GridView1_DataBound(sender As Object, e As EventArgs)
        For index = 0 To record.Count - 1

            If record(index) = 0 Then
                GridView1.Columns(index).Visible = False

            End If

        Next
    End Sub
End Class