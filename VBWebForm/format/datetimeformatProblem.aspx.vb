Imports System.Data.SqlClient

Public Class datetimeformatProblem
    Inherits System.Web.UI.Page


    Private constr As String = ConfigurationManager.ConnectionStrings("EntityExeConnectionString").ConnectionString
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Dim con As SqlConnection = New SqlConnection(constr)

        Using com As SqlCommand = New SqlCommand("select * from myTime", con)


            con.Open()
            Dim reader As SqlDataReader = com.ExecuteReader()
            If reader.HasRows Then

                reader.Read()
                '  "yyyy-MM-dd"
                Label1.Text = Date.Parse(reader.Item("tDate").ToString()).ToString("yyyy-MM-dd")

            End If

        End Using

    End Sub

End Class