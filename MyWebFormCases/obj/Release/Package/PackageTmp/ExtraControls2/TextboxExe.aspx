<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TextboxExe.aspx.cs" Inherits="MyWebFormCases.ExtraControls2.TextboxExe" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="../Scripts/jquery-3.3.1.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <label for="TxtRate">TxtRate:</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TxtRate" runat="server" TextMode="Number"></asp:TextBox><br />
        <label for="TxtSale_Qty">TxtSale_Qty:</label><asp:TextBox ID="TxtSale_Qty" runat="server" TextMode="Number"></asp:TextBox><br />
       <span>TxtAmount:</span> <asp:Label ID="TxtAmount" runat="server" Text=""></asp:Label><br /><br />
       
        <label for="TxtDiscount">TxtDiscount:</label><asp:TextBox ID="TxtDiscount" runat="server" ></asp:TextBox><br />
        <span >TxtDiscount_format:</span><asp:Label ID="TxtDiscount_format" runat="server" Text=""></asp:Label><br /><br />
        <span>TxtTax:</span><asp:Label ID="TxtTax" runat="server" Text=""></asp:Label><br />
       <span>TxtNet_Pay:</span><asp:Label ID="TxtNet_Pay" runat="server" Text=""></asp:Label><br />
     
    </form>

    <script>
        $(function () {

            $("#TxtRate,#TxtSale_Qty").blur(function () {
                var rate = parseFloat($("#TxtRate").val());
                var qty = parseFloat($("#TxtSale_Qty").val());
                if (!isNaN(rate * qty)) {
                    $("#TxtAmount").text(rate * qty);
                }
               
            })
            $("#TxtDiscount").blur(function () {
                var disCount = parseFloat($("#TxtDiscount").val())
                 if (!isNaN(disCount)) {
                  
                    $("#TxtDiscount_format").text(disCount + "%")
                
                }
                var textAmount = parseFloat($("#TxtAmount").text());
                var txtDiscount = parseFloat($("#TxtDiscount").val());
                var productAmount = textAmount - txtDiscount;
                var rate;
                if (isNaN(productAmount )|| isNaN(textAmount)) {
                    return;
                }
                if (productAmount >=1000) {
                    rate = 0.12;
                }
                if (productAmount < 1000) {
                    rate = 0.05;
                }
                $("#TxtTax").text(productAmount * rate *22.5);
               
               

            })


        })

    </script>
</body>
</html>
