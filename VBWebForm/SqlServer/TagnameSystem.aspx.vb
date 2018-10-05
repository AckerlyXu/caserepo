Imports System.Data.SqlClient

Public Class TagnameSystem
    Inherits System.Web.UI.Page

    Private conn As SqlConnection
    Public listFilter As String = Nothing
    Public listFilter_for_parts As String = Nothing
    Private output_part As StringBuilder = New StringBuilder()
    Private constr As String = ConfigurationManager.ConnectionStrings("TagSystem").ConnectionString
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load



        listFilter = BindName()
        listFilter_for_parts = output_part.ToString()
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs)
        Dim input_tags As String = singleFieldTags2.Text
        Dim tags_input_parts As String() = input_tags.Split(","c)
        Dim database_tags As String() = listFilter_for_parts.Split(","c)

        For Each input As String In tags_input_parts

            For Each database As String In database_tags

                If input = database Then
                    GoTo OUTERCONTINUE
                End If
            Next


            Dim sqlParameter As SqlParameter = New SqlParameter("tag_name", SqlDbType.NVarChar, 50)
            sqlParameter.Value = input
            ExecuteNonQuery("insert into tags(tag_name) values (@tag_name)", sqlParameter)

OUTERCONTINUE:
        Next

        Response.Write("Success")
    End Sub



    Private Sub ExecuteNonQuery(ByVal sql As String, ParamArray sqlParameters As SqlParameter())
        Using con As SqlConnection = New SqlConnection(constr)

            Using com As SqlCommand = New SqlCommand(sql, con)
                'com.CommandType = CommandType.StoredProcedure 
                com.Parameters.AddRange(sqlParameters)
                con.Open()
                com.ExecuteNonQuery()
            End Using
        End Using
    End Sub


    Private Function BindName() As String
        Dim dt As DataTable = New DataTable()

        Using adapter As SqlDataAdapter = New SqlDataAdapter("select tag_name from tags", constr)


            adapter.Fill(dt)

        End Using




        Dim output As StringBuilder = New StringBuilder()
        output.Append("[")

        For i As Integer = 0 To dt.Rows.Count - 1
            output_part.Append(dt.Rows(i)("tag_name").ToString())
            output.Append("""" & dt.Rows(i)("tag_name").ToString() & """")

            If i <> (dt.Rows.Count - 1) Then
                output_part.Append(",")
                output.Append(",")
            End If
        Next

        output.Append("];")
        Return output.ToString()
    End Function


End Class