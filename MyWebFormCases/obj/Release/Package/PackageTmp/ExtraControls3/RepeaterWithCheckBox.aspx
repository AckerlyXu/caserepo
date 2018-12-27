<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RepeaterWithCheckBox.aspx.cs" Inherits="MyWebFormCases.ExtraControls3.RepeaterWithCheckBox" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
      <table width="100%" border="0" cellpadding="5" cellspacing="0" bgcolor="#FFFFFF" class="TextoNormalEscuro" style="margin-bottom:5px;" id="tbluserdata">  
<asp:Repeater ID="RptTabelaServicos" runat="server">
    <itemtemplate>
        <tr >
            <td width="16" style=" border-bottom:#EFEFEF 2px solid;"><asp:CheckBox ID="ChkSelecionaServico" runat="server"></asp:CheckBox></td>
          
    
            <td class="TextoNormalEscuro" style=" border-bottom:#EFEFEF 2px solid;"><%# Eval("fileName") %></td>
            <td width="50" style=" border-bottom:#EFEFEF 2px solid; text-align:center;">
            <asp:LinkButton Id="BtnGeneratePdf"  runat="server" CommandArgument='<%# Eval("fileId") %>' CssClass="BotaoGeral BotaoCinzaPequeno"><i class="fa fa-file-o"></i></asp:LinkButton>

            </td>
        </tr>    
    </itemtemplate>
    
    </asp:Repeater>
</table>
    </form>
</body>
</html>
