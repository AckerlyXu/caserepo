<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AjaxListSearchExt.aspx.cs" Inherits="MyWebFormCases.ExtraControls2.AjaxListSearchExt" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">



        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>


       <asp:DropDownList ID="BelongingAdminUnitDDL"
           DataTextField="Name" DataValueField="Index"
           runat="server" AppendDataBoundItems="True"  onMouseOut="this.className='Buttonout'" onMouseOver="this.className='Buttonhover'" style="font-family: 'sakkal Majalla'; font-size: 24px; border-style:solid; border-width:1px;border-color:Black;text-align:right;
                        -moz-border-radius: 15px;-webkit-border-radius: 15px;border-radius: 15px;" Width="535px">
                        </asp:DropDownList>
                      
                        <ajaxToolkit:ListSearchExtender ID="BelongingAdminUnitDDL_ListSearchExtender" runat="server" Enabled="True" TargetControlID="BelongingAdminUnitDDL" PromptPosition="Top" PromptText="please text" QueryPattern="Contains" PromptCssClass="ListSearchingStyle"  IsSorted="True">
                        </ajaxToolkit:ListSearchExtender>
    </form>
</body>
</html>
