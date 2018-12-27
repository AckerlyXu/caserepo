<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DealWithNullExe.aspx.cs" Inherits="MyWebFormCases.gridview3.DealWithNullExe" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>

<script type="text/javascript" src="../Scripts/jquery-3.3.1.js"></script>

<body>
    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" >
            <Columns>
            
            
                   <asp:BoundField DataField="id" HeaderText="id" />
                <asp:TemplateField HeaderText="date">
                    <ItemTemplate>
                        <!-- Convert.ToDateTime(Eval("date")==DBNull.Value?new DateTime(1721, 02, 05):Eval("date"))-->
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("date") as DateTime? ==new DateTime(1753, 01, 01)?"":Eval("date") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
             
            </Columns>
        </asp:GridView>
        <script>
    
        </script>
    </form>
</body>
</html>
