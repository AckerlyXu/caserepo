Imports System.Data.SqlClient

Public Class ListBoxClient
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            binddropdown()
        End If
    End Sub

    Private Sub binddropdown()
        Dim dt As DataTable = New DataTable()

        Using con1 As SqlConnection = New SqlConnection(ConfigurationManager.ConnectionStrings("supplyModel").ConnectionString)
            con1.Open()

            Using cmd1 As SqlCommand = New SqlCommand("select * from suppliers", con1)

                Using ada1 As SqlDataAdapter = New SqlDataAdapter(cmd1)
                    ada1.Fill(dt)
                    ListBox1.DataValueField = "SID"
                    ListBox1.DataTextField = "city"
                    ListBox1.DataSource = dt
                    ListBox1.DataBind()
                End Using
            End Using
        End Using
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs)
        For Each item As ListItem In ListBox1.Items
            Response.Write(If(item.Selected, item.Text & ";", ""))
        Next

        Response.Write("<br/>valuefrom HiddenField:" & HiddenField1.Value)
    End Sub

End Class