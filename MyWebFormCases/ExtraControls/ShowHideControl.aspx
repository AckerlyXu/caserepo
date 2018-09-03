<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowHideControl.aspx.cs" Inherits="MyWebFormCases.ExtraControls.ShowHideControl" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="../Scripts/jquery-3.3.1.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:Panel ID="Panel1" runat="server" Width="100%" BorderColor="Black" BorderWidth="1px">

            <ajaxToolkit:ComboBox ID="ComboBox1" runat="server" DropDownStyle="DropDownList" AutoCompleteMode="SuggestAppend">

                <asp:ListItem>a</asp:ListItem>
                <asp:ListItem>b</asp:ListItem>
                <asp:ListItem>c</asp:ListItem>
            </ajaxToolkit:ComboBox>
            <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>

        </asp:Panel>


        <input type="button" name="name" value="showorhide" id="btn"/>
      
       
        <script>
            $(function () {
                $("#<%=ComboBox1.ClientID%>  button").hide();

                  $("#btn").click(

                    function () {

                        $("#<%=Panel1.ClientID%>").toggle();
                       <%-- $("#<%=Panel1.ClientID%>").css("width","50%")--%>
                    }
                )
              
            })
           
        </script>


    </form>
</body>
</html>
