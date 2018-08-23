<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="KeepStateViewState.aspx.cs" Inherits="MyWebFormCases.ExtraControls.KeepStateViewState" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
</head>
<body>
    <form id="form1" runat="server">
        <asp:TextBox ID="txtCode" runat="server"></asp:TextBox>

       <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myAddModal"  runat="server" onserverclick="Button1_Click">Add New</button><br /><br />
        
    </form>
</body>
</html>
