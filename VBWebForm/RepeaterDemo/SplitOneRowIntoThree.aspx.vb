Public Class SplitOneRowIntoThree
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Not IsPostBack Then
            Dim models As List(Of Model) = New List(Of Model)() From {
                New Model With {
                    .vc_denial_comments = "vc_denial_comments=CPT is denied - 06/09/2018 | CPT is denied becoz of abc reasin - 06/09/2018 | Some Text - 06/09/2018"
                },
                New Model With {
                    .vc_denial_comments = "vc_denial_comments=CPT is denied - 06/09/2018 | CPT is denied becoz of abc reasin - 06/09/2018 | Some Text - 06/09/2018"
                },
                New Model With {
                    .vc_denial_comments = "vc_denial_comments=CPT is denied - 06/09/2018 | CPT is denied becoz of abc reasin - 06/09/2018 | Some Text - 06/09/2018"
                },
                New Model With {
                    .vc_denial_comments = "vc_denial_comments=CPT is denied - 06/09/2018 | CPT is denied becoz of abc reasin - 06/09/2018 | Some Text - 06/09/2018"
                },
                New Model With {
                    .vc_denial_comments = "vc_denial_comments=CPT is denied - 06/09/2018 | CPT is denied becoz of abc reasin - 06/09/2018 | Some Text - 06/09/2018"
                }
            }
            rpDenialCommentInfo.DataSource = models
            rpDenialCommentInfo.DataBind()
        End If


    End Sub

    Protected Sub rpDenialCommentInfo_ItemDataBound(sender As Object, e As RepeaterItemEventArgs)
        If e.Item.ItemType = ListItemType.Item Or e.Item.ItemType = ListItemType.AlternatingItem Then
            ' get the content of of property  vc_denial_comments
            Dim content As String = TryCast(DataBinder.Eval(e.Item.DataItem, "vc_denial_comments"), String)
            Dim commentsLabel As Label = TryCast(e.Item.FindControl("lblComments"), Label)
            ' split the content with | and join the splited content with  |<br>
            commentsLabel.Text = String.Join("|<br/>", content.Split("|"))

        End If

    End Sub
End Class

Public Class Model
    Public Property vc_denial_comments As String
End Class
