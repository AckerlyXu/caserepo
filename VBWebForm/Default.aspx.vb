Public Class _Default
    Inherits Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load

        Session("AuthorizationSinceDate") = "1998/10-08"
        If Not String.IsNullOrEmpty(Session("AuthorizationSinceDate")) Then


            Dim time As Date = Date.ParseExact(Session("AuthorizationSinceDate"), "yyyy/MM-dd",
                                    System.Globalization.CultureInfo.InvariantCulture
                                   )

            Response.Write(Format(time, "dd-MMMM-yyyy"))

        End If


    End Sub
End Class