Imports System.Data.SqlClient

Public Class CheckboxAdd
    Inherits System.Web.UI.Page
    Private constr As String = ConfigurationManager.ConnectionStrings("userItem").ConnectionString
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim Sql As String = "select * from products"
        If Not IsPostBack Then

            Using adapter As SqlDataAdapter = New SqlDataAdapter(Sql, constr)

                Dim table As DataTable = New DataTable()
                adapter.Fill(table)
                Grv_CGL_Product_List.DataSource = table
                Grv_CGL_Product_List.DataBind()
            End Using

        End If
    End Sub

End Class