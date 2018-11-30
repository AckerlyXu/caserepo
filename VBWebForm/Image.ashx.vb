Imports System.Web
Imports System.Web.Services
Namespace VBWebForm
    Public Class Image
        Implements System.Web.IHttpHandler

        Sub ProcessRequest(ByVal context As HttpContext) Implements IHttpHandler.ProcessRequest

            context.Response.ContentType = "image/jpeg"
            context.Response.Write("Hello World!")

        End Sub

        ReadOnly Property IsReusable() As Boolean Implements IHttpHandler.IsReusable
            Get
                Return False
            End Get
        End Property

    End Class
End Namespace
