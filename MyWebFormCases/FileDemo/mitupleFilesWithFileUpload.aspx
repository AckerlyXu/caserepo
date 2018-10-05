<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="mitupleFilesWithFileUpload.aspx.cs" Inherits="MyWebFormCases.FileDemo.mitupleFilesWithFileUpload" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
   
               
      
        <asp:UpdatePanel ID="UpdatePanel2" runat="server">

            <ContentTemplate>
                    <asp:Button ID="Button2" runat="server" Text="button in update panel" /><br /><br />
            </ContentTemplate>
        </asp:UpdatePanel>
    

         <asp:FileUpload ID="FileUpload1" runat="server" AllowMultiple="true" /><br />
                <asp:Label ID="Label1" runat="server" Text=""></asp:Label><br />
        <asp:Button ID="Button1" runat="server" Text="button outside the update panel" OnClick="Button1_Click"  />
        
    </form>
</body>
</html>
