Public Class getLastItemOfList
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Dim listGroups As New List(Of group)

        listGroups.Add(New group("group 1"))
        listGroups.Add(New group("group 2"))
        listGroups.Add(New group("group 3"))
        listGroups.Add(New group("group 4"))
        listGroups.Add(New group("group 5"))
        Response.Write(listGroups.Last(Function(m) m.name = "group 4").name)


    End Sub

    Structure group
        Public name

        Public Sub New(value As String)
            name = value
        End Sub
    End Structure


End Class