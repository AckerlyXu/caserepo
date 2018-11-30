<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.vb" Inherits="VBWebForm._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <%= User.Identity.Name + "<br/>" + Session("Postdata") + "<br/>" + Session("Predata")   %>
</asp:Content>
