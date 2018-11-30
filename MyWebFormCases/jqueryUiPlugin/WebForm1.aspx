<%@ Page Title="" Language="C#" MasterPageFile="~/jqueryUiPlugin/JqueryDataTable.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="MyWebFormCases.jqueryUiPlugin.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <script>
           $(function () {
             
               $("[id*=gvw]").prepend($("<thead></thead>").html($("[id*=gvw]").find("tr:first"))).dataTable({ "pageLength": 10 })
               $("[id*=gvw]").find("thead").prepend("<tr ><th colspan='3' style='text-align:center'>column</th></tr>")  //if you want to add another column in the header
    

           })
  
       </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="gvw" runat="server" ></asp:GridView>
</asp:Content>
