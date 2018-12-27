Imports System.Data.SqlClient
Imports System.Globalization

Public Class datetimeformatProblem
    Inherits System.Web.UI.Page


    Private constr As String = ConfigurationManager.ConnectionStrings("EntityExeConnectionString").ConnectionString
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Response.Write(DateTime.ParseExact("12/09/1994", "dd/MM/yyyy", CultureInfo.InvariantCulture).ToString("dd/MM/yyyy"))
        Using con As SqlConnection = New SqlConnection(constr)

            Using com As SqlCommand = New SqlCommand("insert into myTime (tDate,tDateTime) values(@tDate,@tDateTime) ", con)
                com.Parameters.AddWithValue("tDate", DBNull.Value)
                com.Parameters.AddWithValue("tDateTime", DBNull.Value)
                con.Open()
                com.ExecuteNonQuery()
            End Using
        End Using

        Dim outputDateTime As DateTime


        If DateTime.TryParseExact(TextBox1.Text, "dd/MM/yyyy", CultureInfo.InvariantCulture, DateTimeStyles.None, outputDateTime) Then
            Response.Write(outputDateTime)
        Else
            Response.Write("bad format")
        End If
        'Dim con As SqlConnection = New SqlConnection(constr)

        'Using com As SqlCommand = New SqlCommand("select * from myTime", con)


        '    con.Open()
        '    Dim reader As SqlDataReader = com.ExecuteReader()
        '    If reader.HasRows Then

        '        reader.Read()
        '        '  "yyyy-MM-dd"
        '        Label1.Text = Date.Parse(reader.Item("tDate").ToString()).ToString("yyyy-MM-dd")

        '    End If

        'End Using

    End Sub

End Class