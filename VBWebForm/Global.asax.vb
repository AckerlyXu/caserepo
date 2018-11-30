Imports System.Threading
Imports System.Web.Optimization

Public Class Global_asax
    Inherits HttpApplication

    Sub Application_Start(sender As Object, e As EventArgs)
        ' Fires when the application is started
        RouteConfig.RegisterRoutes(RouteTable.Routes)
        BundleConfig.RegisterBundles(BundleTable.Bundles)
        'Throw New Exception()

    End Sub
    Sub Application_BeginRequest(sender As Object, e As EventArgs)
        ' Fires when the application is started
        Dim req As HttpRequest = Request
        'Throw New Exception()

    End Sub


End Class