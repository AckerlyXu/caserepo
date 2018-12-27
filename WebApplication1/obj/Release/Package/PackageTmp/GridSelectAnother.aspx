<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GridSelectAnother.aspx.cs" Inherits="WebApplication1.GridSelectAnother" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:gridview runat="server" ID="gridview" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="EntityDataSource1" OnSelectedIndexChanged="gridview_SelectedIndexChanged" 
                SelectedIndex="0"  autogenerateselectbutton="True" >
                <Columns>
        
                    <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                    <asp:BoundField DataField="Tag_servicesId" HeaderText="Tag_servicesId" SortExpression="Tag_servicesId" />
                </Columns>
                <selectedrowstyle backcolor="LightCyan"
         forecolor="DarkBlue"
         font-bold="true"/>  

            </asp:gridview>
            <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=Model1Container" DefaultContainerName="Model1Container" EnableFlattening="False" EntitySetName="Servers">
            </asp:EntityDataSource>
        </div>

        <asp:GridView ID="gv" runat="server"  AutoGenerateColumns="False" >
        <Columns>
       
           
           <asp:BoundField DataField="firstName" HeaderText="firstName" ReadOnly="true" />
        </Columns>
    </asp:GridView>
     
    </form>
</body>

</html>
