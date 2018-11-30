Imports System.Drawing
Imports System.IO
Imports System.Net.Http
Imports System.Threading.Tasks

Public Class getImageFromRemoteAddress
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Dim client As HttpClient = New HttpClient()

        Dim bys As Task(Of Byte()) = client.GetByteArrayAsync("http://localhost:57510/images/WingtipToys/boatbig.png")
        Using stream As MemoryStream = New MemoryStream(bys.Result)
            Using bmpImg As Bitmap = New Bitmap(stream)
                bmpImg.Save(Server.MapPath("/images/test.png"))
            End Using

        End Using
    End Sub

End Class