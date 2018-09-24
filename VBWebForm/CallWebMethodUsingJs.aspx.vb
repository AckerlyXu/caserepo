Imports System.Web.Services

Public Class CallWebMethodUsingJs
    Inherits System.Web.UI.Page



    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim a As String = Request("HTTP_REFERER")
        Dim b As Object = Request.UrlReferrer
    End Sub

    <WebMethod()>
    Public Shared Function SayHello(ByVal strParamList As String) As String

        Return "welcome to site " + New DateTime().ToString("hh:mm:ss")



    End Function

End Class