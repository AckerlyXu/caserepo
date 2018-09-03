<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CutPictures.aspx.cs" Inherits="MyWebFormCases.FileDemo.CutPictures" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
   
    <form id="form1" runat="server">
        
        <asp:Image ID="Image2" runat="server"  ImageUrl="100.jpg"/>
        <asp:Image ID="Image1" runat="server" />
        <br />
       
        <br />
        please enter the x coordinate of the start point &nbsp;<asp:TextBox ID="TextBox1" runat="server" TextMode="Number"></asp:TextBox><br />
            please enter the y coordinate of the start point &nbsp;<asp:TextBox ID="TextBox2" runat="server" TextMode="Number"></asp:TextBox><br />

         please enter the width of the picture you want  <asp:TextBox ID="TextBox3" runat="server" TextMode="Number"></asp:TextBox>  <br />
        please enter the height of the picture you want  <asp:TextBox ID="TextBox4" runat="server" TextMode="Number"></asp:TextBox><br />
        <asp:FileUpload ID="FileUpload1" runat="server"  /> <asp:Button ID="Button1" runat="server" Text="upload" />

    </form>
 
 
</body>
</html>
