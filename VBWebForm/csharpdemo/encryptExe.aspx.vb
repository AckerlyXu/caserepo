Imports System.IO
Imports System.Security.Cryptography
Imports FxResources.System.Security.Cryptography
Imports TextPDF

Public Class encryptExe
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'Dim pwd1 As String = "MAKV2SPBNI99212"

        'Dim salt1 As Byte() = New Byte() {&H49, &H76, &H61, &H6E, &H20, &H4D, &H65, &H64}
        ''

        'Dim data As String = "Some  test  data Some  test  data Some  test  data Some  test  data "

        'Dim k1 As Rfc2898DeriveBytes = New Rfc2898DeriveBytes(pwd1, salt1)

        'Dim encryptor As Aes = Aes.Create()
        'encryptor.KeySize = 128
        'encryptor.BlockSize = 128

        'encryptor.Key = k1.GetBytes(128 / 8)
        'encryptor.IV = k1.GetBytes(128 / 8)

        'Dim fsinput As New FileStream(Server.MapPath("/csharpdemo/check.pdf"), FileMode.Open)

        'Dim encrypt As CryptoStream = New CryptoStream(fsinput, encryptor.CreateEncryptor(), CryptoStreamMode.Write)

        'Dim utfd1 As Byte() = New System.Text.UTF8Encoding(False).GetBytes(data)

        'encrypt.Write(utfd1, 0, utfd1.Length)
        'encrypt.FlushFinalBlock()
        'encrypt.Close()
        'k1.Reset()

    End Sub

    Public Shared Sub Decrypt(inputFilePath As String, outputfilePath As String)
        Dim pwd1 As String = "MAKV2SPBNI99212"

        Dim salt1 As Byte() = New Byte() {&H49, &H76, &H61, &H6E, &H20, &H4D, &H65, &H64}

        Dim k2 As Rfc2898DeriveBytes = New Rfc2898DeriveBytes(pwd1, salt1)
        Dim descrypt As Aes = Aes.Create()


        descrypt.KeySize = 128
        descrypt.BlockSize = 128
        descrypt.Key = k2.GetBytes(128 / 8)


        descrypt.IV = k2.GetBytes(128 / 8)

        Dim fsOutput As New FileStream(outputfilePath, FileMode.OpenOrCreate)

        Dim dec As CryptoStream = New CryptoStream(fsOutput, descrypt.CreateDecryptor(), CryptoStreamMode.Write)
        Dim edata As Byte() = File.ReadAllBytes(inputFilePath)

        dec.Write(edata, 0, edata.Length)

        dec.Flush()
        dec.Close()
        k2.Reset()
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs)
        'Decrypt(Server.MapPath("/csharpdemo/check.pdf"), Server.MapPath("/csharpdemo/check3.txt"))
        'Response.Write(File.ReadAllText(Server.MapPath("/csharpdemo/check3.txt")))

        Dim filePath As String = Server.MapPath("/csharpdemo/check3.txt") 'write the path of your txt file

        ' Create a New PdfWriter
        Dim PdfWriter As TextPDF.PdfWriter =
       New TextPDF.PdfWriter(842.0F, 1190.0F, 10.0F, 10.0F)


        PdfWriter.Write(filePath)

    End Sub
End Class