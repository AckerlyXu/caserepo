<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RepeaterLayout.aspx.cs" Inherits="MyWebFormCases.ExtraControls3.RepeaterLayout" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
     .border {
             box-sizing:border-box;
                border:1px solid grey;
                
        }
    
    </style>
</head>
<body>
    <form id="form1" runat="server">

        <asp:GridView ID="GridView1" runat="server" ShowHeader="false" AutoGenerateColumns="false"  Width="500px">
          
            <Columns >
                
                <asp:BoundField DataField="Cell1" />
                 <asp:BoundField DataField="Cell2" />
                 <asp:BoundField DataField="Cell3" />
                 <asp:BoundField  DataField="Cell4" />
            </Columns>
        </asp:GridView>

       <%-- <div style="width:202px;height:75px" id="parent" class="border">
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>

                <div style="width:50px;height:25px;float:left" class="border" >
                    <%# Container.DataItem.ToString() %>

                </div>
            </ItemTemplate>

        </asp:Repeater>
         

            </div>--%>
           <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
    </form>
</body>
</html>
