<%@ Page Language="C#"  EnableEventValidation = "false" AutoEventWireup="true" CodeBehind="FitnessCenter.aspx.cs" Inherits="MyWebFormCases.gridView2.FitnessCenter" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server" DataKeyNames="id" AutoGenerateColumns="false">
            
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" />
                <asp:BoundField  DataField="selectDate" HeaderText="date" />
              <asp:CheckBoxField DataField="isAuto" HeaderText="isAuto" />
                <asp:BoundField DataField="name" HeaderText="name" />
               <asp:TemplateField HeaderText="isExported">
                
                   <ItemTemplate>

                          <asp:CheckBox runat="server" ID="box" Checked='<%# Eval("isExported") %>'></asp:CheckBox>
                   </ItemTemplate>
               </asp:TemplateField>
            </Columns>

        </asp:GridView>

        <asp:Button ID="Button1" runat="server" Text="Export" OnClick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" Text="Refresh" OnClick="Button2_Click" />
    </form>
</body>
</html>
