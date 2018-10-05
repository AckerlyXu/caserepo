Public Class dealWithString
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim str As String = "Task_Name asc ,task_no asc ,Stage_Name asc ,Priority_name asc"

        Response.Write("<span style='color:blue'>add  pic asc: </span>" + getString(str, "pic asc") + "<br/>")
        Response.Write("<span style='color:blue'>add Task_Name asc:</span>" + getString(str, "Task_Name asc") + "<br/>")
        Response.Write("<span style='color:blue'>add Task_Name desc:</span>" + getString(str, "Task_Name desc"))

    End Sub

    Private Function getString(ByVal origin As String, ByVal add As String) As String
        'check whether add is end with asc or desc if not it is not valid , return origin
        If Not add.TrimEnd(" ").EndsWith(" asc") And Not add.TrimEnd(" ").EndsWith(" desc") Then

            Return origin
        End If

        ' split the string into string array , for example Task_Name asc ,task_no asc  
        ' will becom ("Task_Name asc ","task_no asc")
        Dim strs As String() = origin.Split(New Char() {","c}, StringSplitOptions.RemoveEmptyEntries)
        ' check whether the array contains the string to add
        If Not origin.Contains(add.Trim(" ")) Then

            For index = 0 To strs.Length - 1
                'loop through the splited string to see whether one of the elements has the same prefix
                'if so replace it with the variable add, if not return origin + " ,"+add
                If add.Substring(0, add.TrimEnd(" ").LastIndexOf(" ")) = strs(index).Substring(0, strs(index).TrimEnd().LastIndexOf(" ")) Then
                    strs(index) = add
                    Return String.Join(",", strs)
                End If


            Next
            Return origin + " ," + add
        End If
        Return origin
    End Function
End Class