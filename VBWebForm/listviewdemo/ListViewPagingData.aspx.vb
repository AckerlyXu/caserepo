Imports System.Data.SqlClient

Public Class ListViewPagingData
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs)
        Dim sql As String = "update questions set correctanswer=@option where Id=@id"
        For Each ri As ListViewItem In ListView1.Items



            Dim r1 As RadioButton = TryCast(ri.FindControl("rad1"), RadioButton)

                Dim r2 As RadioButton = TryCast(ri.FindControl("rad2"), RadioButton)

                Dim r3 As RadioButton = TryCast(r2.FindControl("rad3"), RadioButton)

                Dim sqlparameterId As SqlParameter = New SqlParameter("id", SqlDbType.Int)

                Dim questdetid As String = TryCast(ri.FindControl("QuestionDetailID"), HiddenField).Value
                sqlparameterId.Value = Convert.ToInt32(questdetid)


                If r1.Checked Then

                    Dim answer As String = TryCast(r2.FindControl("Option1"), Label).Text
                    Dim sqlParameterAnswer As SqlParameter = New SqlParameter("option", SqlDbType.NVarChar, 100)
                    sqlParameterAnswer.Value = answer
                    ExcuteNunQuery(sql, sqlparameterId, sqlParameterAnswer)

                End If

                If r2.Checked Then

                    Dim sqlParameterAnswer As SqlParameter = New SqlParameter("option", SqlDbType.NVarChar, 100)

                    Dim answer As String = TryCast(r2.FindControl("Option2"), Label).Text
                    sqlParameterAnswer.Value = answer
                    sqlParameterAnswer.Value = answer
                    ExcuteNunQuery(sql, sqlparameterId, sqlParameterAnswer)
                End If

                If r3.Checked Then

                    Dim sqlParameterAnswer As SqlParameter = New SqlParameter("option", SqlDbType.NVarChar, 100)

                    Dim answer As String = TryCast(r2.FindControl("Option3"), Label).Text
                    sqlParameterAnswer.Value = answer

                    ExcuteNunQuery(sql, sqlparameterId, sqlParameterAnswer)
                End If


        Next



    End Sub
    Private Shared constr As String = ConfigurationManager.ConnectionStrings("EntityExeConnectionString").ConnectionString
    Public Function ExcuteNunQuery(ByVal sql As String, ParamArray sqlParameters As SqlParameter()) As Integer
        Using con As SqlConnection = New SqlConnection(constr)

            Using com As SqlCommand = New SqlCommand(sql, con)
                com.Parameters.AddRange(sqlParameters)
                con.Open()
                Return com.ExecuteNonQuery()
            End Using
        End Using
    End Function
End Class