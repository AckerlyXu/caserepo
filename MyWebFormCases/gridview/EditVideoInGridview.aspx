<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditVideoInGridview.aspx.cs" Inherits="MyWebFormCases.gridview.EditVideoInGridview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
          <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"  Width="400px" Height="80px" OnRowEditing="GridView1_RowEditing"  DataKeyNames="id" DataSourceID="SqlDataSource1"  OnRowUpdated="GridView1_RowUpdated" OnRowUpdating="GridView1_RowUpdating">
              <Columns>
                  <asp:BoundField DataField="id" ReadOnly="true" />
                  <asp:BoundField DataField="name" />
                  <asp:TemplateField>
                      <ItemTemplate>
<video controls="controls"  src="<%# Eval("videoPath") %>">
                          
                          </video>
                      </ItemTemplate>
                  
                      <EditItemTemplate>
                              <asp:FileUpload runat="server" ID="upload"></asp:FileUpload>
                      </EditItemTemplate>
                  </asp:TemplateField>
                  <asp:CommandField ShowEditButton="true" ShowCancelButton="true"  />
              </Columns>

          </asp:GridView>
          
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:bjhksjConnectionString %>" DeleteCommand="DELETE FROM [Video] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Video] ([videoPath], [Name]) VALUES (@videoPath, @Name)" SelectCommand="SELECT [Id], [videoPath], [Name] FROM [Video]" UpdateCommand="UPDATE [Video] SET [videoPath] = @videoPath, [Name] = @Name WHERE [Id] = @Id">
              <DeleteParameters>
                  <asp:Parameter Name="Id" Type="Int32" />
              </DeleteParameters>
              <InsertParameters>
                  <asp:Parameter Name="videoPath" Type="String" />
                  <asp:Parameter Name="Name" Type="String" />
              </InsertParameters>
              <UpdateParameters>
                  <asp:Parameter Name="videoPath" Type="String" />
                  <asp:Parameter Name="Name" Type="String" />
                  <asp:Parameter Name="Id" Type="Int32" />
              </UpdateParameters>
          </asp:SqlDataSource>
          
    </form>
 
</body>
</html>
