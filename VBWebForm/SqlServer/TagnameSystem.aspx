<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="TagnameSystem.aspx.vb" Inherits="VBWebForm.TagnameSystem" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="../Content/jquery.tagit.css" rel="stylesheet" />
    <link href="../Content/jquery.tagit.css" rel="stylesheet" />

    <link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.1/themes/base/jquery-ui.css" rel="stylesheet" type="text/css"/>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js" type="text/javascript" charset="utf-8"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.9.2/jquery-ui.min.js" type="text/javascript" charset="utf-8"></script>


    <script src="../Scripts/tag-it.min.js"></script>

   

    
</head>
<body>
    <form id="form1" runat="server">

         <script>
        $(function () {
            var sampleTags = <%=listFilter %> /*listFilter is a variable that will be updated via C#. to provide tags for Autocomplete, fetching it from database.*/
                          $("#<%=singleFieldTags2.ClientID  %>").val(sampleTags.join(","))
            $('#<%=singleFieldTags2.ClientID  %>').tagit({
                
               
                });

          
        });
    

       <%-- <script>
        $(function () {
            var sampleTags = <%=listFilter %> /*listFilter is a variable that will be updated via C#. to provide tags for Autocomplete, fetching it from database.*/
            $('#singleFieldTags2').tagit({
                availableTags: sampleTags
               
            });
        });--%>
        </script>

      <!--Textbox that will take input tags from users -->
        <asp:TextBox name="tags" id="singleFieldTags2"  class="autosuggest" runat="server"></asp:TextBox>
       
          
        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
    </form>
</body>