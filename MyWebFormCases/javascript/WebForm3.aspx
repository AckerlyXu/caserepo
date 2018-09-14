<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="MyWebFormCases.javascript.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="../Scripts/jquery-3.3.1.js"></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     
    <ul id="id" class="interna menudoc">

</ul>

    <script type="text/javascript">

         function hola() {
             var template1 =  `
              <p>d</p>
             `;
           
           

            document.getElementById('id').innerHTML = template1;
        }
        hola();
    </script>
   
</asp:Content>
