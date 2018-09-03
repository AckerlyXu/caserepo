<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WithCheckBox.aspx.cs" Inherits="MyWebFormCases.gridView2.WithCheckBox" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<script src="../Scripts/jquery-3.3.1.min.js"></script>
<body>
    <form id="form1" runat="server">
      <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="EntryNo" DataSourceID="SqlDataSource1">
          <Columns>
              <asp:BoundField DataField="EntryNo" HeaderText="EntryNo" InsertVisible="False" ReadOnly="True" SortExpression="EntryNo" />
              <asp:BoundField DataField="Code" HeaderText="Code" SortExpression="Code" />
              <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />

             <asp:TemplateField>
                 <ItemTemplate>
                     <asp:CheckBox ID="CheckBox1" runat="server" />  <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("entryno","~/gridView2/EntryDetail.aspx?id={0}") %>' Text="Detail"   ></asp:HyperLink>
                 </ItemTemplate>
             </asp:TemplateField>
          </Columns>
        
    </asp:GridView>

        <script>
            $(function () {
                $("#GridView1 :checkbox").each(
                    function () {
                        if ($(this).prop("checked")) {
                            $(this).siblings("a").show();
                        } else {
                             $(this).siblings("a").hide();
                        }

                    });
              
                $("#GridView1 :checkbox").change(
                    function () {
                        if ($(this).prop("checked")) {
                            $(this).siblings("a").show();
                        } else {
                             $(this).siblings("a").hide();
                        }
                        

                    }
                )

            })

        </script>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EntityExeConnectionString %>" SelectCommand="SELECT [EntryNo], [Code], [Description] FROM [Entries]"></asp:SqlDataSource>
    </form>
</body>
</html>
