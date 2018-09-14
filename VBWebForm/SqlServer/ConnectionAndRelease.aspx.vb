Imports System.Data.SqlClient

Public Class ConnectionAndRelease
    Inherits System.Web.UI.Page

    Private Shared connectionString = ConfigurationManager.ConnectionStrings("bjhksjConnectionString").ConnectionString
    Private Shared connectionString2 = "Data Source=.;Initial Catalog=bjhksj;Integrated Security=True"
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs)
        Using con As SqlConnection = New SqlConnection(connectionString)

            Dim Sql As String = "select * from VBPlan"
            Using com As SqlCommand = New SqlCommand(Sql, con)

                con.Open()
                Using reader As SqlDataReader = com.ExecuteReader()

                    If reader.HasRows Then
                        reader.Read()
                        Label1.Text = reader.Item("id").ToString()
                    End If

                End Using
            End Using
        End Using

    End Sub
End Class