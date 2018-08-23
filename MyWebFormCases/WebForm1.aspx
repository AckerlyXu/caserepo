<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="MyWebFormCases.WebForm1" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>



<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <script src="Scripts/modernizr-2.8.3.js"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
    <title></title>
    <style>
        .modalBackground {
            background-color: Gray;
            filter: alpha(opacity=50);
            opacity: 0.7;
        }

        .pnlBackGround {
            position: fixed;
            top: 10%;
            left: 10px;
            width: 300px;
            height: 125px;
            text-align: center;
            background-color: White;
            border: solid 3px black;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Bola" />
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>


           
            <ajaxToolkit:ModalPopupExtender ID="ModalPopupExtender1" runat="server" PopupControlID="Panel1" TargetControlID="Label1" CancelControlID="Button2" BackgroundCssClass="modalBackground" DropShadow="True"></ajaxToolkit:ModalPopupExtender>
          

            

            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <asp:Panel ID="Panel1" runat="server" CssClass="pnlBackGround" Height="300px" Width="500px" Style="display: none;">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th>Flag</th>
                                            <th>Country</th>
                                            <th>Amount</th>
                                            <th>Description</th>

                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>1</td>
                                            <td>Continente</td>
                                            <td>0 €</td>
                                            <td>Envio Correio Registado/Transp.</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                <asp:Button ID="Button2" CssClass="btn btn-warning" runat="server" Text="Close" />
            </asp:Panel>
        </div>
    </form>
</body>
</html>
