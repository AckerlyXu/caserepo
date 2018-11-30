<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="getCheckBox.aspx.cs" Inherits="MyWebFormCases.ExtraControls3.getCheckBox" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false">

            <Columns>
                <asp:TemplateField HeaderText="checkbox">
                    <ItemTemplate>
                        <label  class="mt-checkbox mt-checkbox-single mt-checkbox-outline">
                            <input id="Checkbox1" type="checkbox" runat="server" class="checkboxes select-checkbox" value="test" />
                        <span></span>
                    </label>
                    </ItemTemplate>
                    

                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <asp:Button ID="Button1" runat="server" Text="getAllTheCheckbox" OnClick="Button1_Click" />
    </form>
</body>
</html>
