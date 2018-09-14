<%@ Page Title="" Language="C#" MasterPageFile="~/ExtraControls/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="MyWebFormCases.ExtraControls.WebForm1" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css"> 
 .header1 {background-color: blue;} 
 .content {border: solid;}
 .header2{background-color: green;}
</style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
     <ajaxToolkit:Accordion ID="Accordion1" runat="server"  HeaderCssClass="header1" ContentCssClass="content"
         >
            <HeaderTemplate>
                <%# Eval("name") %>
            </HeaderTemplate>
            <ContentTemplate>
                <%# Eval("address") %>
            </ContentTemplate>
        </ajaxToolkit:Accordion>



    

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server" >
    
    <br />
    <br />

    <ajaxToolkit:Accordion ID="Accordion2" runat="server" HeaderCssClass="header2" ContentCssClass="content">
            <HeaderTemplate>
                <%# Eval("name") %>
            </HeaderTemplate>
            <ContentTemplate>
                <%# Eval("address") %>
            </ContentTemplate>
        </ajaxToolkit:Accordion>
</asp:Content>
