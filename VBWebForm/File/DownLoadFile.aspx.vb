Public Class DownLoadFile
    Inherits System.Web.UI.Page
    Public Shared a As Int32 = 1

    Public b As String
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs)

        Try
            If a = 1 Then
                a = a + 1
                Throw New Exception()

            End If

            Response.Clear()

            Response.AddHeader("content-disposition", "attachment;filename=yourfilename.txt")
            'write your own content
            Response.Write("hellow")

            Response.End()

        Catch ex As Exception
            ScriptManager.RegisterStartupScript(Me, Me.GetType(), "s", "alert('" + HttpUtility.JavaScriptStringEncode(ex.ToString()) + "')", True)



        End Try
    End Sub
End Class