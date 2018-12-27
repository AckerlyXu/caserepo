Imports System.Globalization
Imports WebFormBll

Public Class About
    Inherits Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        Session("Language") = "Language"
        Dim nll As EmployeeBll = New EmployeeBll()

    End Sub
End Class