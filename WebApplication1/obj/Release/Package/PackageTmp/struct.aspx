<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="struct.aspx.cs" Inherits="WebApplication1._struct" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
       <h2>Modification Contact</h2>
    <asp:ValidationSummary ID="editVS" runat="server" ShowSummary="true" ShowMessageBox="false" ValidationGroup="editValidationGroup" ForeColor="Red" />
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="WebApplication1.DataSet1TableAdapters.ContactsTableAdapter" UpdateMethod="Update">
            <DeleteParameters>
                <asp:Parameter Name="Original_Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="firstName" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:QueryStringParameter DefaultValue="1" Name="id" QueryStringField="id" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="firstName" Type="String" />
                <asp:Parameter Name="Original_Id" Type="Int32" />
            </UpdateParameters>
        </asp:ObjectDataSource>
    <asp:DetailsView ID="contactDV" runat="server" Height="50px"
       
        DefaultMode="Edit"
        DataKeyNames="Id"
        AutoGenerateRows="False"
        OnDataBound="contactDV_DataBound"
        OnItemCommand="contactDV_ItemCommand"
        >
        <Fields>
            <%-- ID --%>
            <asp:TemplateField HeaderText="ID">
                <ItemTemplate>
                    <asp:Label ID="idLbl" runat="server" Text='<%# Eval("id") %>' />
                </ItemTemplate>
            </asp:TemplateField>
           
            <asp:TemplateField HeaderText="Prénom : ">
                <EditItemTemplate>
                    <asp:TextBox ID="firstNameETB" runat="server" Text='<%# Bind("firstName") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="firstNameTBRFV" runat="server" ErrorMessage="Le champs Prénom doit être renseigné." ValidationGroup="editValidationGroup" ControlToValidate="firstNameETB" ForeColor="Red">*</asp:RequiredFieldValidator>
                </EditItemTemplate>
            </asp:TemplateField>
          
            
            <asp:TemplateField>
                <EditItemTemplate>
                    <asp:GridView ID="serviceGV"
                        runat="server"
                        AutoGenerateColumns="false"
                        GridLines="None"
                        ShowFooter="true"
                        OnRowDataBound="serviceGV_RowDataBound"
                        OnRowDeleting="serviceGV_RowDeleting"
                        >
                        <Columns>
                          <%--  <asp:BoundField DataField="id" />--%>
                            <asp:TemplateField HeaderText="Service">
                                <ItemTemplate>
                                   <asp:DropDownList ID="serviceDDL" runat="server"
                                      
                                       DataTextField="Libelle" 
                                       DataSourceID="EntityDataSource1" 
                                       DataValueField="id"
                                  
                                       AppendDataBoundItems="true"
                                       >
                                       <asp:ListItem Text="..." Value=""></asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:TextBox ID="serviceTB" runat="server" Text='' Enabled="false"/>
                                   <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=EntityExeEntities" DefaultContainerName="EntityExeEntities" EnableFlattening="False" EntitySetName="Tag_services" Select="it.[Id], it.[Libelle]"></asp:EntityDataSource>
        
                                </ItemTemplate>                                
                            </asp:TemplateField>
                           <asp:TemplateField HeaderText="Type">
                                <ItemTemplate>
                                   <asp:DropDownList ID="typeDDL" runat="server"
                                        DataSourceID="typeEDS"
                                        DataTextField="Type"
                                        DataValueField="id"
                                     
                                        AppendDataBoundItems="true"
                                        >
                                        <asp:ListItem Text="..." Value="" />
                                    </asp:DropDownList>
                                    <asp:TextBox ID="typeTB" runat="server" />
                                   <asp:EntityDataSource ID="typeEDS" runat="server"
                                        ConnectionString="name=EntityExeEntities"
                                        DefaultContainerName="EntityExeEntities"
                                        EnableFlattening="False"
                                        EntitySetName="ContactTypes"
                                        OrderBy="it.Type" Select="it.[Id], it.[Type]" />
                                </ItemTemplate>
                                <FooterStyle HorizontalAlign="Right" />
                                <FooterTemplate>
                                    <asp:Button ID="addService" runat="server" Text="+" OnClick="addService_Click" />
                                </FooterTemplate>
                            </asp:TemplateField>

                            <asp:CommandField ShowDeleteButton="true" />
                        </Columns>
                    </asp:GridView>
                   <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="WebApplication1.DataSet1TableAdapters.Contact_ServiceTableAdapter">
           
            <SelectParameters>
                <asp:QueryStringParameter DefaultValue="1" Name="id" QueryStringField="id" Type="Int32" />
            </SelectParameters>
            
        </asp:ObjectDataSource>
                </EditItemTemplate>
            </asp:TemplateField>
        </Fields>
        <FooterTemplate>
            <asp:Button ID="btnUpdate" runat="server" CommandName="Update" Text="Enregistrer" />
        </FooterTemplate>
    </asp:DetailsView>
    <br />
    <div style="float:right">
        
        <asp:Button ID="updateBtn" Text="Enregistrer" runat="server" OnClick="updateBtn_Click" />
    </div>

       
    </form>

</body>
</html>
