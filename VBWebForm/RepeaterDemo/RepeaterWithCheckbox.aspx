<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="RepeaterWithCheckbox.aspx.vb" Inherits="VBWebForm.RepeaterWithCheckbox" %>

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
          
            <asp:HiddenField ID="HiddenField1" runat="server"  Value ='<%# Eval("fileId") %>'/>
            <td class="TextoNormalEscuro" style=" border-bottom:#EFEFEF 2px solid;"><%# Eval("fileName") %></td>
            <td width="50" style=" border-bottom:#EFEFEF 2px solid; text-align:center;">
            <asp:LinkButton Id="BtnGeneratePdf"  runat="server" CommandArgument='<%# Eval("fileId") %>' CssClass="BotaoGeral BotaoCinzaPequeno"><i class="fa fa-file-o"></i></asp:LinkButton>

            </td>
        </tr>    
    </itemtemplate>
      
    </asp:Repeater>
</table>
        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click"  />
    </form>
</body>
</html>
