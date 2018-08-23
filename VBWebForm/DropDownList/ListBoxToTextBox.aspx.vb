Imports System.IO

Public Class ListBoxToTextBox
    Inherits System.Web.UI.Page
    'set the basic path from which you read the files
    Dim basicPath As String = "D:\files\"

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            'get all the file's path through the class Directory
            Dim fileNames() As String = Directory.GetFiles(basicPath)
            ' show the first in the textbox
            TextBox1.Text = File.ReadAllText(fileNames(0))
            For index = 0 To fileNames.Length - 1
                'change the file's path to the file's filename
                fileNames(index) = Path.GetFileNameWithoutExtension(fileNames(index))

            Next
            'bind data
            list.DataSource = fileNames

            list.DataBind()

        End If

    End Sub

    Protected Sub list_SelectedIndexChanged(sender As Object, e As EventArgs)
        'get the selected filename and show the content of the file in the textbox
        Dim textPath As String = basicPath + list.SelectedItem.Text + ".txt"
        TextBox1.Text = File.ReadAllText(textPath)

    End Sub
End Class