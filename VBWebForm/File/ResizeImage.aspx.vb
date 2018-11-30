Imports System.Drawing
Imports System.IO

Public Class ResizeImage
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        ' get the absolute path of the original folder
        Dim path As String = Server.MapPath("~/Format/imageTest")
        '   get all the absolute pathes  of files in the original folder
        Dim images As String() = Directory.GetFiles(path)
        ' get the absolute path of the targeted folder
        Dim target As String = Server.MapPath("~/Format/imageTarget")

        'loop through the  pathes
        For Each item In images
            ' the first argument Is the path of original image , 
            '     the second argument Is the New name of the image (I take the original name)
            '    the third argument Is the width of the New image
            '     the fourth argument Is the height of the New image
            '    the fifth argument Is the mode of generating the New image
            '    there are four modes
            '     HW    resize the image according the width And height specified ,which may cause distortion
            '     H    resize the image according the height
            '     W resize the image according the width
            '    Cut  resize the image according the width And height specified (Not cause distrotion)
            MakeThumbnail(item, target & "/" & item.Substring(item.LastIndexOf("\")), 50, 50, "Cut")

        Next


    End Sub



    Public Sub MakeThumbnail(ByVal originalImagePath As String, ByVal thumbnailPath As String, ByVal width As Integer, ByVal height As Integer, ByVal mode As String)
        Dim originalImage As System.Drawing.Image = System.Drawing.Image.FromFile(originalImagePath)
        Dim towidth As Integer = width
        Dim toheight As Integer = height
        Dim x As Integer = 0
        Dim y As Integer = 0
        Dim ow As Integer = originalImage.Width
        Dim oh As Integer = originalImage.Height

        Select Case mode
            Case "HW"
            Case "W"
                toheight = originalImage.Height * width / originalImage.Width
            Case "H"
                towidth = originalImage.Width * height / originalImage.Height
            Case "Cut"

                If CDbl(originalImage.Width) / CDbl(originalImage.Height) > CDbl(towidth) / CDbl(toheight) Then
                    oh = originalImage.Height
                    ow = originalImage.Height * towidth / toheight
                    y = 0
                    x = (originalImage.Width - ow) / 2
                Else
                    ow = originalImage.Width
                    oh = originalImage.Width * height / towidth
                    x = 0
                    y = (originalImage.Height - oh) / 2
                End If

            Case Else
        End Select

        Dim bitmap As System.Drawing.Image = New System.Drawing.Bitmap(towidth, toheight)
        Dim g As Graphics = System.Drawing.Graphics.FromImage(bitmap)
        g.InterpolationMode = System.Drawing.Drawing2D.InterpolationMode.High
        g.SmoothingMode = System.Drawing.Drawing2D.SmoothingMode.HighQuality
        g.Clear(Color.Transparent)
        g.DrawImage(originalImage, New Rectangle(0, 0, towidth, toheight), New Rectangle(x, y, ow, oh), GraphicsUnit.Pixel)

        Try
            bitmap.Save(thumbnailPath, System.Drawing.Imaging.ImageFormat.Jpeg)
        Catch e As System.Exception
            Throw e
        Finally
            originalImage.Dispose()
            bitmap.Dispose()
            g.Dispose()
        End Try
    End Sub

End Class