<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ajaxWebForm.aspx.cs" Inherits="WebFormCases.ajaxUpdatePanel.ajaxWebForm" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 785px">
    <form id="form1" runat="server">
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div>
            <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                <ContentTemplate>
            <asp:ListBox ID="ListBox1" runat="server" AutoPostBack="True" CssClass="f<asp:UpdatePanel runat=" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="SID" server=""></asp:ListBox>
           
                 
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="CID" DataSourceID="SqlDataSource2">

                <Columns>
                    <asp:BoundField  DataField="CID" HeaderText="CID" InsertVisible="False" ReadOnly="True" SortExpression="CID" />
                    <asp:BoundField  DataField="Name" HeaderText="Name" SortExpression="Name" />

                    <asp:BoundField DataField="Supplier_SID" HeaderText="Supplier_SID" SortExpression="Supplier_SID" />

                </Columns>


            </asp:GridView>
                       </ContentTemplate>
                </asp:UpdatePanel>
            
             
                    </div>
                    <div class="panel-body">
                        <asp:GridView ID="GridView2" CssClass="table table-hover table-striped" GridLines="None" runat="server" AutoGenerateColumns="False" DataKeyNames="SID" DataSourceID="SqlDataSource3"  >
                            <Columns>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:CheckBox ID="CheckBox2" runat="server" CssClass="form-control" />
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:BoundField DataField="SID" HeaderText="SID" InsertVisible="False" SortExpression="SID" ReadOnly="True" />
                                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                            </Columns>
                        </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:WebFormCases.Models.supplyModelConnectionString2 %>" SelectCommand="SELECT [SID], [Name], [City] FROM [Suppliers]"></asp:SqlDataSource>
                    </div>
               
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>
                                <asp:Button ID="Button4" runat="server" Text="Adicionar" OnClick="Adiciona_Click" />
                                
                            </ContentTemplate>                            
                        </asp:UpdatePanel>                        
              

        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:WebFormCases.Models.supplyModelConnectionString2 %>" SelectCommand="SELECT [CID], [Name], [Supplier_SID] FROM [Contacts] WHERE ([Supplier_SID] = @Supplier_SID)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="ListBox1" DefaultValue="2" Name="Supplier_SID" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WebFormCases.Models.supplyModelConnectionString %>" SelectCommand="SELECT [SID], [Name] FROM [Suppliers]" InsertCommand="insert into contacts (name,supplier_sid) values (@name,@sid)">
                <InsertParameters>
                    <asp:Parameter Name="name" Type="String"  />
                    <asp:Parameter Name="sid" Type="Int32" />
                </InsertParameters>
            </asp:SqlDataSource>
    </form>
</body>
</html>
