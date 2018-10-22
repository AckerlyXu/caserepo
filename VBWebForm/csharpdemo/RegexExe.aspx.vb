Imports System.IO

Public Class RegexExe
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim input = File.ReadAllText("D:\check.txt")
        'Change the pattern to include new line 
        Dim pattern = "\bcar\b\s*"
        Dim matches = Regex.Matches(input, pattern)
        Dim count = matches.Count
        Dim output As String = String.Empty
        ' Dim RemoveWhiteSpace As String
        If count >= 5 Then
            output = Regex.Replace(input, pattern, "")


            ' RemoveWhiteSpace = Regex.Replace(output, "", "")
            File.WriteAllText("D:\check.txt", output.Trim)
            ' File.WriteAllText("D:\check.txt", RemoveWhiteSpace.Trim)

        End If
    End Sub

End Class