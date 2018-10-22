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

        For Each database_tag As String In database_tags
            ' to remove the tags that exist in database but don't exist in the posted tags
            If Not tags_input_parts.Contains(database_tag) Then
                Using con As SqlConnection = New SqlConnection(constr)

                    Using com As SqlCommand = New SqlCommand("delete from tags where tag_name=@tagName ", con)
                        com.Parameters.AddWithValue("tagName", database_tag)
                        con.Open()
                        com.ExecuteNonQuery()
                    End Using
                End Using
            End If

        Next
        For Each input As String In tags_input_parts

            ' to insert the tags that  exist in the posted tags but don't exist in the database

            If Not database_tags.Contains(input) Then

                Using con As SqlConnection = New SqlConnection(constr)

                    Using com As SqlCommand = New SqlCommand("insert into tags(tag_name) values (@tag_name)", con)
                        com.Parameters.AddWithValue("tag_name", input)
                        con.Open()
                        com.ExecuteNonQuery()
                    End Using
                End Using
            End If


        Next


        listFilter = BindName()


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