<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="MyWebFormCases.Identity.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
     <%--  <h1>
           login
       </h1>--%>
            <div>
        <%--    <asp:Label ID="Label1" runat="server" Text="username"></asp:Label><br />
             <asp:TextBox ID="userName" runat="server"></asp:TextBox>
              <asp:RequiredFieldValidator ID="requireUsername" runat="server" ErrorMessage="userName is required" ControlToValidate="userName" ForeColor="red"></asp:RequiredFieldValidator>
           
        </div>
            
          <div>
            <asp:Label ID="Label2" runat="server" Text="password"></asp:Label><br />
             <asp:TextBox ID="passWord" runat="server" TextMode="Password"></asp:TextBox>
              <asp:RequiredFieldValidator ID="requirePassword" runat="server" ErrorMessage="password is required" ControlToValidate="password" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
      

        <asp:Label ID="errorMsg" runat="server" Text="username or password is wrong" ForeColor="red" Visible="false"></asp:Label>--%>
                  <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
    </form>
</body>
</html>
