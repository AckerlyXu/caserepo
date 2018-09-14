<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="SplitOneRowIntoThree.aspx.vb" Inherits="VBWebForm.SplitOneRowIntoThree" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
    <style>
        .cards-even{background-color:lightblue}
        .cards-odd{background-color:lightcoral}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UP1" runat="server">
            <ContentTemplate>
                <table class="border-collapse table-hp">
                    <asp:Repeater ID="rpDenialCommentInfo" ClientIDMode="Static" runat="server" OnItemDataBound ="rpDenialCommentInfo_ItemDataBound">
                        <HeaderTemplate>
                            </table>
                            <table class="border-collapse table-hp">
                        </HeaderTemplate>
                        <ItemTemplate>
                            <tr>
                                <td>
                                    <div class="cards-odd">
                                        <div>
                                            <asp:Label ID="lblComments" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "vc_denial_comments")%>'></asp:Label>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                        </ItemTemplate>
                        <AlternatingItemTemplate>
                            <tr>
                                <td>
                                    <div class="cards-even">
                                        <div>
                                            <asp:Label ID="lblComments" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "vc_denial_comments")%>'></asp:Label>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                        </AlternatingItemTemplate>
                        <FooterTemplate>
                        </FooterTemplate>
                    </asp:Repeater>
                    <tr id="trComment" runat="server" visible="false">
                        <td>
                            <div class="cards-even">
                                <div>
                                    <asp:Label ID="lblHeaderComment1" runat="server"></asp:Label>
                                </div>
                            </div>
                        </td>
                    </tr>
                </table>
            </ContentTemplate>
        </asp:UpdatePanel>
    </form>
</body>
</html>
