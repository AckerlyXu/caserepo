<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="insertMany.aspx.cs" Inherits="MyWebFormCases.gridView2.insertMany" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>

    <script type="text/javascript">

        function CalculateTotals() {
            var gv = document.getElementById("<%= GridView1.ClientID %>");
            var tb = gv.getElementsByTagName("input");
            var lb = gv.getElementsByTagName("span");

            var sub = 0;
            var total = 0;
            var indexQ = 1;
            var indexP = 0;
            var price = 0;

            for (var i = 0; i < tb.length; i++) {
                if (tb[i].type == "text") {
                    ValidateNumber(tb[i]);

                    price = lb[i*3+1].innerHTML.replace("$", "").replace(",", "");
                    // price = lb[indexP].innerHTML.replace("$", "").replace(",", "");
                    sub = parseFloat(price) - parseFloat(tb[i].value);
                    console.log(sub);
                
                    if (isNaN(sub)) {
                        lb[i * 3 + 2].innerHTML = "0.00";
                        sub = 0;
                    }
                    else {
                        lb[i * 3 + 2].innerHTML = FormatToMoney(sub, "Rs.", ",", ".");;
                        console.log(FormatToMoney(sub, "Rs.", ",", "."));
                    }

                    indexQ++;
                    indexP = indexP + 2;

                    total += parseFloat(sub);
                }
            }

            lb[lb.length - 1].innerHTML = FormatToMoney(total, "Rs.", ",", ".");
        }

        function ValidateNumber(o) {
            if (o.value.length > 0) {
                o.value = o.value.replace(/[^\d]+/g, ''); //Allow only whole numbers  
            }
        }
        function isThousands(position) {
            if (Math.floor(position / 3) * 3 == position) return true;
            return false;
        };

        function FormatToMoney(theNumber, theCurrency, theThousands, theDecimal) {
            var theDecimalDigits = Math.round((theNumber * 100) - (Math.floor(theNumber) * 100));
            theDecimalDigits = "" + (theDecimalDigits + "0").substring(0, 2);
            theNumber = "" + Math.floor(theNumber);
            var theOutput = theCurrency;
            for (x = 0; x < theNumber.length; x++) {
                theOutput += theNumber.substring(x, x + 1);
                if (isThousands(theNumber.length - x - 1) && (theNumber.length - x - 1 != 0)) {
                    theOutput += theThousands;
                };
            };
            theOutput += theDecimal + theDecimalDigits;
            return theOutput;
        }   
    </script>  


    <script>
        $(function () {
            $(".field1").keyup(function () {

                var total = 0;
                $(".field1").each(function () {
                    total += parseFloat($(this).val());
                });

                $(".totaloffield td").eq(3).text(total);



            });



        })
</script> 


</head>
<body>
    <form id="form1" runat="server">



   <asp:gridview ID="GridView1"  runat="server"  ShowFooter="true" AutoGenerateColumns="false"> 
    
        <Columns>  

    <asp:BoundField DataField="id" HeaderText="Row Number" /> 
        <asp:BoundField DataField="Description" HeaderText="Item Description" />  

         <asp:TemplateField HeaderText="Description">  
            <ItemTemplate>  
               <asp:Label ID="LblDescription" runat="server" Font-Bold="true" ForeColor="Blue" Text="0" ></asp:Label> 
            </ItemTemplate>             
        </asp:TemplateField>  


        <asp:TemplateField HeaderText="Item Price">  
            <ItemTemplate>  
                <asp:Label ID="LBLPrice" runat="server" Text='<%# Eval("Price","{0:C}") %>'></asp:Label>  
            </ItemTemplate>  
            <FooterTemplate>  
                <b>Total Qty:</b>  
            </FooterTemplate>  
        </asp:TemplateField>  

        <asp:TemplateField HeaderText="Quantity">  
            <ItemTemplate>  
                <asp:TextBox ID="TXTQty" runat="server" onkeyup="CalculateTotals();"  class="field1" Text="0" ></asp:TextBox>  
            </ItemTemplate>  
            <FooterTemplate>  
                <asp:Label ID="LBLQtyTotal" runat="server" Font-Bold="true" ForeColor="Blue" Text="0" ></asp:Label>       
                <b>Total Amount:</b>  
            </FooterTemplate>  
        </asp:TemplateField>  

        <asp:TemplateField HeaderText="Sub-Total">  
            <ItemTemplate>  
                <asp:Label ID="LBLSubTotal" runat="server" ForeColor="Green" Text="0.00"></asp:Label>  
            </ItemTemplate>  
            <FooterTemplate>  
                <asp:Label ID="LBLTotal" runat="server" ForeColor="Green" Font-Bold="true" Text="0.00"></asp:Label>  
            </FooterTemplate>  
        </asp:TemplateField>  

        </Columns>  

         <FooterStyle Font-Bold="True" CssClass="totaloffield" />

    </asp:gridview>  


    <asp:Button ID="BtnSave" runat="server" Text="Save" onclick="BtnSave_Click" />

    </form>

</body>
</html>