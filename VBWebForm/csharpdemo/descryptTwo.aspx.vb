Imports System.IO
Imports System.Security.Cryptography

Public Class descryptTwo
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Try
            Dim original As String = "5441191000005226"

            Using myAes As AesCryptoServiceProvider = New AesCryptoServiceProvider()

                Dim encrypted As Byte() = EncryptStringToBytes_Aes(original, myAes.Key, myAes.IV)
                File.WriteAllBytes(Server.MapPath("/csharpdemo/check.txt"), encrypted)

                Response.Write(File.ReadAllBytes(Server.MapPath("/csharpdemo/check.txt")).Length)




                Dim roundtrip As String = DecryptStringFromBytes_Aes(encrypted, myAes.Key, myAes.IV)
                Response.Write(String.Format("Original:   {0}<br/>", original))


                Response.Write(Encoding.Default.GetString(encrypted) + "<br/>")
                Response.Write(String.Format("Round Trip: {0}<br/>", roundtrip))
            End Using


        Catch ex As Exception
            Response.Write(String.Format("Error: {0}", ex.Message))
        End Try

    End Sub
    Private Shared Function EncryptStringToBytes_Aes(ByVal plainText As String, ByVal Key As Byte(), ByVal IV As Byte()) As Byte()
        If plainText Is Nothing OrElse plainText.Length <= 0 Then Throw New ArgumentNullException("plainText")
        If Key Is Nothing OrElse Key.Length <= 0 Then Throw New ArgumentNullException("Key")
        If IV Is Nothing OrElse IV.Length <= 0 Then Throw New ArgumentNullException("IV")
        Dim encrypted As Byte()

        Using aesAlg As AesCryptoServiceProvider = New AesCryptoServiceProvider()
            aesAlg.Key = Key
            aesAlg.IV = IV
            Dim encryptor As ICryptoTransform = aesAlg.CreateEncryptor(aesAlg.Key, aesAlg.IV)

            Using msEncrypt As MemoryStream = New MemoryStream()

                Using csEncrypt As CryptoStream = New CryptoStream(msEncrypt, encryptor, CryptoStreamMode.Write)

                    Using swEncrypt As StreamWriter = New StreamWriter(csEncrypt)


                        swEncrypt.Write(plainText)
                    End Using

                    encrypted = msEncrypt.ToArray()
                End Using
            End Using
        End Using

        Return encrypted
    End Function

    Private Shared Function DecryptStringFromBytes_Aes(ByVal cipherText As Byte(), ByVal Key As Byte(), ByVal IV As Byte()) As String
        If cipherText Is Nothing OrElse cipherText.Length <= 0 Then Throw New ArgumentNullException("cipherText")
        If Key Is Nothing OrElse Key.Length <= 0 Then Throw New ArgumentNullException("Key")
        If IV Is Nothing OrElse IV.Length <= 0 Then Throw New ArgumentNullException("IV")
        Dim plaintext As String = Nothing

        Using aesAlg As AesCryptoServiceProvider = New AesCryptoServiceProvider()
            aesAlg.Key = Key
            aesAlg.IV = IV
            Dim decryptor As ICryptoTransform = aesAlg.CreateDecryptor(aesAlg.Key, aesAlg.IV)

            Using msDecrypt As MemoryStream = New MemoryStream(cipherText)

                Using csDecrypt As CryptoStream = New CryptoStream(msDecrypt, decryptor, CryptoStreamMode.Read)

                    Using srDecrypt As StreamReader = New StreamReader(csDecrypt)

                        plaintext = srDecrypt.ReadToEnd()
                    End Using
                End Using
            End Using
        End Using

        Return plaintext
    End Function



End Class