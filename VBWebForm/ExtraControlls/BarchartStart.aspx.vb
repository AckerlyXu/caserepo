Imports System.Data.SqlClient

Public Class BarchartStart
    Inherits System.Web.UI.Page

    Private constr As String = ConfigurationManager.ConnectionStrings("supplyModel").ConnectionString

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load



        If Not IsPostBack Then

            Using adapter As SqlDataAdapter = New SqlDataAdapter("select * from myset", constr)

                Dim table As DataTable = New DataTable()
                adapter.Fill(table)
                Dim x As List(Of String) = New List(Of String)
                Dim y As List(Of Decimal) = New List(Of Decimal)
                For Each drv As DataRow In table.Rows
                    x.Add(drv("name"))
                    y.Add(Convert.ToDecimal(drv("age")))

                Next
                BarChart1.Series.Add(New AjaxControlToolkit.BarChartSeries() With {
               .Data = y.ToArray()
               })


                BarChart1.CategoriesAxis = String.Join(",", x)

            End Using



        End If
    End Sub

End Class