Public Class updatepanelWithTimer
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub timer1_Tick(sender As Object, e As EventArgs)
        Label1.Text = DateTime.Now.ToString()
        ScriptManager.RegisterStartupScript(Me, Me.GetType(), "callback", "callback()", True)
    End Sub

End Class