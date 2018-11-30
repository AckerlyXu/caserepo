<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="site1Child.aspx.cs" Inherits="MyWebFormCases.site1Child" %>
<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>--%>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <%-- <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>--%>

       <div class="dropdown">
                            <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                &#xf0c9;
                            </button>
                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                <a class="dropdown-item" href="#">Action</a>
                                <a class="dropdown-item" href="#">Another action</a>
                                <a class="dropdown-item" href="#">Something else here</a>
                            </div>
                        </div>


    <script>
$(document).ready(function () {
// Datepicker Popups calender to Choose date.
$(function () {
<%--$("#<%=Textbox1'%>").datepicker({
changeMonth: true,
changeYear: true,
dateFormat: 'dd/mm/yy',
yearRange: '1950:2018'
});--%>
// Pass the user selected date format.

});
});

</script>
</asp:Content>
