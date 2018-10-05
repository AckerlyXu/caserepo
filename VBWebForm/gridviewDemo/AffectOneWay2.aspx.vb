Public Class AffectOneWay2
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            Dim ints As List(Of Int32) = New List(Of Integer)
            For index = 1 To 10
                ints.Add(1)
            Next
            GridView4.DataSource = ints
            GridView4.DataBind()
        End If
    End Sub

End Class