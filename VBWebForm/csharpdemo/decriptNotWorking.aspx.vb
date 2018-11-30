Imports System.IO
Imports System.Security.Cryptography

Public Class decriptNotWorking
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load




        Encrypt("5441191000005226", "F8660BF9063B1BBEFEA2BC413C8514FE")
        Decrypt(Request.MapPath("/csharpdemo/check.txt"), Server.MapPath("/csharpdemo/check3.txt"), "F8660BF9063B1BBEFEA2BC413C8514FE")

    End Sub

    Private Shared Sub Encrypt(ByVal plainText As String, ByVal password As String)


        Dim salt1 As Byte() = New Byte() {&H49, &H76, &H61, &H6E, &H20, &H4D, &H65, &H64}


        Dim data As String = plainText

        Dim k1 As Rfc2898DeriveBytes = New Rfc2898DeriveBytes(password, salt1)

        Dim encryptor As Aes = Aes.Create()
        encryptor.KeySize = 128
        encryptor.BlockSize = 128

        encryptor.Key = k1.GetBytes(128 / 8)
        encryptor.IV = k1.GetBytes(128 / 8)

        Dim fsinput As New FileStream(HttpContext.Current.Request.MapPath("/csharpdemo/check.txt"), FileMode.Open)

        Dim encrypt As CryptoStream = New CryptoStream(fsinput, encryptor.CreateEncryptor(), CryptoStreamMode.Write)

        Dim utfd1 As Byte() = New System.Text.UTF8Encoding(False).GetBytes(data)

        encrypt.Write(utfd1, 0, utfd1.Length)
        encrypt.FlushFinalBlock()
        encrypt.Close()



    End Sub

    Public Shared Sub Decrypt(inputFilePath As String, outputfilePath As String, pwd As String)


        Dim salt1 As Byte() = New Byte() {&H49, &H76, &H61, &H6E, &H20, &H4D, &H65, &H64}

        Dim k2 As Rfc2898DeriveBytes = New Rfc2898DeriveBytes(pwd, salt1)
        Dim descrypt As Aes = Aes.Create()


        descrypt.KeySize = 128
        descrypt.BlockSize = 128
        descrypt.Key = k2.GetBytes(128 / 8)


        descrypt.IV = k2.GetBytes(128 / 8)

        Dim fsOutput As New FileStream(outputfilePath, FileMode.Open)

        Dim dec As CryptoStream = New CryptoStream(fsOutput, descrypt.CreateDecryptor(), CryptoStreamMode.Write)
        Dim edata As Byte() = File.ReadAllBytes(inputFilePath)

        dec.Write(edata, 0, edata.Length)

        dec.Flush()
        dec.Close()
        k2.Reset()
    End Sub


End Class