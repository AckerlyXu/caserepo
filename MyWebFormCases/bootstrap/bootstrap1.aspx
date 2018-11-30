<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bootstrap1.aspx.cs" Inherits="MyWebFormCases.bootstrap.bootstrap1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
         <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
</head>
<body>
    <form id="form1" runat="server">
       <div style="font-size:8pt; font-family:Verdana;" class="d-flex justify-content-between">
                   <div id="left" s>
                      <span>Show Page </span>
                      <asp:DropDownList ID="ddlPageNumber" runat="server"
                         AutoPostBack="true"
                         ></asp:DropDownList>
                      <span> of</span>
                      <asp:Label ID="lblShowRecords" runat="server"></asp:Label>
                      <span>Pages </span>
                   </div>
                   <div id="right" >
                      <span>Display </span>
                      <asp:DropDownList ID="ddlPageSize"
                            runat="server"
                            AutoPostBack="true"
                        >
                         <asp:ListItem Text="1" Value="1"></asp:ListItem>
                         <asp:ListItem Text="5" Value="5"></asp:ListItem>
                         <asp:ListItem Text="10" Value="10"
                                       Selected="true"></asp:ListItem>
                         <asp:ListItem Text="20" Value="20"></asp:ListItem>
                         <asp:ListItem Text="25" Value="25"></asp:ListItem>
                         <asp:ListItem Text="50" Value="50"></asp:ListItem>
                      </asp:DropDownList>
                      <span> Records per Page</span>
                   </div>
                </div>
    </form>
</body>
</html>
