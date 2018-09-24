<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebUserControl1.ascx.cs" Inherits="MyWebFormCases.WebUserControl1" %>
<asp:Button ID="gotoAnother" ClientIDMode="Static" runat="server" Text="goToAnotherPage"  OnClick="gotoAnother_Click" />

<input type="button"  value="click" id="hello" />


<script>
    $(function () {

        $("#hello").click(
            function () {
                $.ajax(
                {
                    url: "/my.aspx",
                    success: function () {

                    }

                }



            )

            }
            
        )

    })
</script>