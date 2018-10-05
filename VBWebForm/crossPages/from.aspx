<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/crossPages/Site1.Master" CodeBehind="from.aspx.vb" Inherits="VBWebForm.from" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

      <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

                <asp:Button ID="Button1" runat="server" Text="Button" PostBackUrl="~/crossPages/ToMyPage.aspx" />
</asp:Content>
