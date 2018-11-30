Imports System.Data.SqlClient

Public Class showImages
    Inherits System.Web.UI.Page
    Private constr As String = ConfigurationManager.ConnectionStrings("wingTipToys").ConnectionString
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            Using adapter As SqlDataAdapter = New SqlDataAdapter("select * from products", constr)

                Dim table As DataTable = New DataTable()
                adapter.Fill(table)
                PicturesInFolder.DataSource = table
                PicturesInFolder.DataBind()
            End Using
        End If
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs)


        For Each item As DataListItem In PicturesInFolder.Items
            If item.ItemType = ListItemType.AlternatingItem Or item.ItemType = ListItemType.Item Then
                Dim flag As CheckBox = CType(item.FindControl("ckPickPhoto"), CheckBox)
                If Not flag.Checked Then
                    item.Visible = False
                End If
            End If
        Next

    End Sub
End Class