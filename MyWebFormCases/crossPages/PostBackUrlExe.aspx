<%@ Page Title="" Language="C#" MasterPageFile="~/javascript/Site2.Master" AutoEventWireup="true" CodeBehind="PostBackUrlExe.aspx.cs" Inherits="MyWebFormCases.crossPages.PostBackUrlExe" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" Text="Button" PostBackUrl="~/crossPages/PageToGo.aspx" />
</asp:Content>
