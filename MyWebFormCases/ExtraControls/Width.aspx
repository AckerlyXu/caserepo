<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Width.aspx.cs" Inherits="MyWebFormCases.ExtraControls.Width" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
               
      <div style="font-family:Arial">
            <table>
        
                <tr>
                    <td colspan="5">
                        <h3>Anlagenübersicht</h3>
                    </td>
                </tr>
                <tr>
                    <td colspan="30">
                        <asp:PlaceHolder runat="server" ID="panelAnlagen"></asp:PlaceHolder>
                    </td>
                </tr>
            </table>
         <asp:ScriptManager ID="ScriptManager2" runat="server"></asp:ScriptManager>
            </div>
    </form>
</body>
</html>
