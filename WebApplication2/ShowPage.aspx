<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowPage.aspx.cs" Inherits="WebApplication2.ShowPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script src="Scripts/jquery-3.3.1.js"></script>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

             <asp:Label ID="Label2" runat="server" Text="VideoName"></asp:Label> :<asp:Label ID="Label1" runat="server" Text=""></asp:Label><br/>
            <div>
             <asp:Label ID="Label4" runat="server" Text="VideoPath"></asp:Label>:<asp:Label ID="Label3" runat="server" Text="File"></asp:Label>
               

            </div>
       
            <video  controls="controls" id="myVideo"></video>
            
              
       
        </div>
       <script>

           $(function () {
// get the path of the video to show and set the video's src attribute the path you have got
               $("#myVideo").attr("src", $("#Label3").text());
           })

       </script>
    </form>
</body>
</html>
