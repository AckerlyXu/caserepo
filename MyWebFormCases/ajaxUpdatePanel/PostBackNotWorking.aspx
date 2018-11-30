<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PostBackNotWorking.aspx.cs" Inherits="MyWebFormCases.ajaxUpdatePanel.PostBackNotWorking" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="../Scripts/jquery-3.3.1.min.js"></script>
      <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"  />
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
       <div class="container padding-bottom-5x mb-2">
         <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
                <ContentTemplate>
             
                <div class="col-xl-6 col-md-6 col-sm-6">
                    <asp:Button ID="btnFabebook" runat="server" Text="Facebook Login" OnClick="Button1_Click"/>
                </div>
               
           <asp:TextBox ID="txtemailLogin" runat="server" CssClass="form-control" placeholder="Email"></asp:TextBox><span class="input-group-addon"><i class="icon-mail"></i></span>
                  <asp:TextBox ID="txtPasswordLogin" runat="server" CssClass="form-control" placeholder="Password" TextMode="Password"></asp:TextBox><span class="input-group-addon"><i class="icon-lock"></i></span>
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                   </ContentTemplate>
                    </asp:UpdatePanel>
           </div>

        <script>
$(document).ready(function () {
            //loginByFacebook();
        });


            function callBack () {
                alert("hello");
            }

       //function loginByFacebook() {

       //     var prm = Sys.WebForms.PageRequestManager.getInstance();
       //     if (prm != null) {
       //         prm.add_endRequest(function (sender, e) {
                       
       //             if (sender._postBackSettings.panelsToUpdate != null) {

       //              //   loginByFacebook();
       //                 alert("hello world");

       //             }

       //         });
       //     };
       // }

        </script>
    </form>
</body>
</html>
