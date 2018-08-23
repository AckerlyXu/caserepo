<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UseDropDownUserControl.aspx.cs" Inherits="MyWebFormCases.ExtraControls.UseDropDownUserControl" %>
<%@ Register Src="~/ExtraControls/DropDownUserControl.ascx" TagPrefix="uc1" TagName="DropDown" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
</head>
<body>
    <form id="form1" runat="server">
    <uc1:DropDown runat="server" ID="kkk" ></uc1:DropDown>
    </form>
</body>
</html>
