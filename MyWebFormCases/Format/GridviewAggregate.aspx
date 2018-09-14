<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GridviewAggregate.aspx.cs" Inherits="MyWebFormCases.Format.GridviewAggregate" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
    
    <style type="text/css">
        .grid-sltrow {
            background: #ddd;
            font-weight: bold;
        }

        .SubTotalRowStyle {
            border: solid 1px Black;
            background-color: #D8D8D8;
            font-weight: bold;
        }

        .GrandTotalRowStyle {
            border: solid 1px Gray;
            background-color: #000000;
            color: #ffffff;
            font-weight: bold;
        }

        .GroupHeaderStyle {
            border: solid 1px Black;
            background-color: #4682B4;
            color: #ffffff;
            font-weight: bold;
        }

        .serh-grid {
            width: 85%;
            border: 1px solid #6AB5FF;
            background: #fff;
            line-height: 14px;
            font-size: 11px;
            font-family: Verdana;
        }
    </style>

    
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID"
                OnRowDataBound="GridView1_RowDataBound"
                OnRowCreated="GridView1_RowCreated"
                EnableModelValidation="True">
                <Columns>
                    <asp:BoundField DataField="Item_Name" HeaderText="ItemName" SortExpression="Item_Name" />
                    <asp:BoundField DataField="Unit" HeaderText="Unit" SortExpression="Unit"  />
                    <asp:BoundField DataField="Qty" HeaderText="Qty" SortExpression="Qty" ItemStyle-Width="100px" >
                        <ItemStyle HorizontalAlign="Right" />
                    </asp:BoundField>
                     <asp:BoundField DataField="Rate" HeaderText="Rate" SortExpression="Rate" ItemStyle-Width="100px" >
                         <ItemStyle HorizontalAlign="Right" />
                     </asp:BoundField>
                </Columns>
            </asp:GridView>
    </div>
    </form>
</body>
</html>