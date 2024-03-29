﻿Imports System.Data.SqlClient

Public Class ListViewPagingData
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            Dim record = Session("record")
            If record Is Nothing Then
                Session("record") = 1

            Else
                Dim count As Int32 = Session("record")
                Session("record") = count + 1


                If count + 1 >= 4 Then
                    Response.Write("you have finished all the exams")
                    Response.End()
                End If

            End If
        End If
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



    Private pageNumber As Int32    'record the currentPage
    Protected Sub ListView1_PagePropertiesChanging(sender As Object, e As PagePropertiesChangingEventArgs)
        pageNumber = e.StartRowIndex / e.MaximumRows
    End Sub

    Protected Sub ListView1_DataBound(sender As Object, e As EventArgs)   'make previous page numbers invisiable
        Dim pager As DataPager = CType(ListView1.FindControl("DataPager1"), DataPager)
        For index = 0 To pageNumber - 1
            pager.Controls(0).Controls(index * 2).Visible = False
        Next

    End Sub

    Protected Sub ListView1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles ListView1.SelectedIndexChanged

    End Sub
End Class