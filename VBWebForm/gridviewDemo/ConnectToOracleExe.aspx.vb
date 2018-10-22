Imports Oracle.DataAccess.Client

Public Class ConnectToOracleExe
    Inherits System.Web.UI.Page

    Private Shared constr As String = ConfigurationManager.ConnectionStrings("oracleConstr").ToString()
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Not IsPostBack Then

            binddata()

        End If

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs)
        Using con As OracleConnection = New OracleConnection(constr)

            Using com As OracleCommand = New OracleCommand("insert into student (id,name,age) values (stu_seq.nextval,:name,:age)", con)
                Dim name = New OracleParameter(":name", OracleDbType.Varchar2, 50)
                name.Value = TextBox1.Text
                Dim age = New OracleParameter(":age", OracleDbType.Int32)
                age.Value = TextBox2.Text

                com.Parameters.Add(name)
                com.Parameters.Add(age)
                con.Open()
                com.ExecuteNonQuery()
                binddata()
                TextBox1.Text = ""
                TextBox2.Text = ""
            End Using
        End Using
    End Sub

    Private Sub binddata()
        Dim ds As DataTable = New DataTable()

        Using con As OracleConnection = New OracleConnection(constr)
            con.Open()
            Using cmd As OracleCommand = New OracleCommand("select * from student;", con)
                Using oda As OracleDataAdapter = New OracleDataAdapter()
                    oda.SelectCommand = cmd
                    oda.Fill(ds)
                    GridView1.DataSource = ds
                    GridView1.DataBind()
                End Using


            End Using



        End Using

    End Sub
End Class