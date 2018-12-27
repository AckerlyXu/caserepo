<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="layoutGridview.aspx.vb" Inherits="VBWebForm.layoutGridview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        #ItemGridView td{  /*ItemGridView is the id of gridview , please choose your own gridview*/
         
        /*word-wrap:break-word;*/
    word-break:break-all;
    width:100px;   /*write your own width*/    

        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
       <asp:GridView ID="ItemGridView" runat="server" AutoGenerateColumns="true" 
          >
           
       
        </asp:GridView>
    </form>
</body>
</html>
