Imports System
Imports System.Linq
Imports System.Web
Imports System.Web.UI
Imports System.Data.OleDb
Imports System.Security.Cryptography
Imports System.Text
Imports System.Web.Helpers

Public Class Register

    'Public Classs register?
    Inherits System.Web.UI.Page


    Function ReturnDate() As String

        Dim theDate As String = ""

        Dim NumericDayofMonth As Integer = Date.Now.Day
        Dim OrdinalSuffix As String = ""

        Select Case NumericDayofMonth
            Case 1, 21, 31
                OrdinalSuffix = "<sup>st</sup>"
            Case 2, 22
                OrdinalSuffix = "<sup>nd</sup>"
            Case 3, 23
                OrdinalSuffix = "<sup>rd</sup>"
            Case Else
                OrdinalSuffix = "<sup>th</sup>"
        End Select

        Dim NumericMonthofYear As Integer = Date.Now.Month
        Dim MonthofYear As String = ""

        Select Case NumericMonthofYear
            Case 1
                MonthofYear = "January"
            Case 2
                MonthofYear = "February"
            Case 3
                MonthofYear = "March"
            Case 4
                MonthofYear = "April"
            Case 5
                MonthofYear = "May"
            Case 6
                MonthofYear = "June"
            Case 7
                MonthofYear = "July"
            Case 8
                MonthofYear = "August"
            Case 9
                MonthofYear = "September"
            Case 10
                MonthofYear = "October"
            Case 11
                MonthofYear = "November"
            Case 12
                MonthofYear = "December"
        End Select

        theDate &= Date.Now.Day.ToString() '1, 2, 3, 4 etc
        theDate &= OrdinalSuffix & " " 'st, nd, rd, th
        theDate &= MonthofYear & " " 'Jan, Feb etc
        theDate &= Date.Now.Year.ToString() '2013, 2014 etc

        Return theDate
    End Function


    Private Sub CreateAccount(ByVal username As String, ByVal password As String, ByVal email As String)

        Dim hashedPassword As String = System.Web.Helpers.Crypto.HashPassword(password)

        Using connection As New OleDbConnection("connectionString")

            Using cmd As New OleDbCommand("INSERT INTO university (username, strEmail, hashed) VALUES (@username, @strEmail, @hashed)", connection)
                cmd.Parameters.AddWithValue("@username", username)
                cmd.Parameters.AddWithValue("@strEmail", email)
                cmd.Parameters.AddWithValue("@hashed", hashedPassword)

                connection.Open()
                cmd.ExecuteNonQuery()
            End Using
        End Using
    End Sub




    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load



    End Sub

End Class

