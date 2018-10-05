<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IdAggregrate.aspx.cs" Inherits="MyWebFormCases.gridView2.IdAggregrate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="../Scripts/jquery-3.3.1.js"></script>
      <style type="text/css">
        body
        {
            font-family: Arial;
            font-size: 10pt;
        }
        table
        {
            border: 1px solid #ccc;
            width: 550px;
            margin-bottom: -1px;
        }
        table th
        {
            background-color: #F7F7F7;
            color: #333;
            font-weight: bold;
        }
        table th, table td
        {
            padding: 5px;
            border: 1px solid #ccc;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
       <asp:GridView ID="gvCustomers" runat="server" AutoGenerateColumns="false">
        <Columns>
            <asp:TemplateField HeaderText="Customer Id" ItemStyle-Width="110px" ItemStyle-CssClass="CustomerId">
                <ItemTemplate>
                    <asp:Label Text='<%# Eval("CustomerId") %>' runat="server" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Name" ItemStyle-Width="150px" ItemStyle-CssClass="Name">
                <ItemTemplate>
                    <asp:Label Text='<%# Eval("Name") %>' runat="server" />
                    <asp:TextBox Text='<%# Eval("Name") %>' runat="server" Style="display: none" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Country" ItemStyle-Width="150px" ItemStyle-CssClass="Country">
                <ItemTemplate>
                    <asp:Label Text='<%# Eval("Country") %>' runat="server" />
                    <asp:TextBox Text='<%# Eval("Country") %>' runat="server" Style="display: none" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:LinkButton Text="Edit" runat="server" CssClass="Edit" />
                    <asp:LinkButton Text="Update" runat="server" CssClass="Update" Style="display: none" />
                    <asp:LinkButton Text="Cancel" runat="server" CssClass="Cancel" Style="display: none" />
                    <asp:LinkButton Text="Delete" runat="server" CssClass="Delete" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
           
    </asp:GridView>
        total column id is <span id="total"></span>
        <script>

     $(function () {
            $.ajax({
                type: "POST",
                url: "/gridView2/IdAggregrate.aspx/GetCustomers",
                data: '{}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: OnSuccess
            });
        });

        function OnSuccess(response) {
            var xmlDoc = $.parseXML(response.d);
            var xml = $(xmlDoc);
            var customers = xml.find("Table");
            var row = $("[id*=gvCustomers] tr:last-child");
            if (customers.length > 0) {
                var sum = 0;
                $.each(customers, function () {
                    var customer = $(this);
                    sum += parseInt($(this).find("CustomerId").text());
                    AppendRow(row, $(this).find("CustomerId").text(), $(this).find("Name").text(), $(this).find("Country").text())
                    row = $("[id*=gvCustomers] tr:last-child").clone(true);
                });
                $("#total").text(sum);
            } else {
                row.find(".Edit").hide();
                row.find(".Delete").hide();
                row.find("span").html('&nbsp;');
            }
            }
             function AppendRow(row, customerId, name, country) {
            //Bind CustomerId.
            $(".CustomerId", row).find("span").html(customerId);

            //Bind Name.
            $(".Name", row).find("span").html(name);
            $(".Name", row).find("input").val(name);

            //Bind Country.
            $(".Country", row).find("span").html(country);
            $(".Country", row).find("input").val(country);

            row.find(".Edit").show();
            row.find(".Delete").show();
            $("[id*=gvCustomers]").append(row);
        }

        </script>
    </form>
</body>
</html>
