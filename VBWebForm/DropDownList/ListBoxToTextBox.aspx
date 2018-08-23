<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ListBoxToTextBox.aspx.vb" Inherits="VBWebForm.ListBoxToTextBox" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="row">
                <div class="col-3">
       <asp:listbox runat="server" AutoPostBack="true" OnSelectedIndexChanged="list_SelectedIndexChanged" ID="list" ></asp:listbox>
                    </div>
                <div class="col-9">
                    <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" Width="500px" Height="500px" ValidateRequestMode="Disabled"></asp:TextBox>
                </div>
                
                </div>
            </div>
    </form>
</body>
</html>

