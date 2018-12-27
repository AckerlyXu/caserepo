<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PrintRepeater.aspx.cs" Inherits="MyWebFormCases.ExtraControls3.PrintRepeater" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">

    <title>BarCode Sticker Print Page</title>
     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script type="text/javascript">
        function Print() {
            var count = $('[id*=tblCustomer]').length;
            var pagebreakcount = 4;
            var i = 1;
            //$('[id*=tblCustomer]').each(function () {
            //    if (i % pagebreakcount == 0) {
            //        $(this).attr('style', 'page-break-after: always');
            //    }
            //    i++;
            //});
            var divContents = document.getElementById("dvCustomers")
            var printWindow = window.open('', '', 'height=2000,width=612');
            printWindow.document.body.appendChild(divContents);
            printWindow.document.close();
            printWindow.print();
            Redirect();
        
        };
        function Redirect() {
            setTimeout(function () {
                location.href = location.href;
            }, 5000);
        }
    </script>
    

</head>





<body style="font-size: 12pt; font-family: Times New Roman">
    <form id="form1" runat="server">
    <div >
    
        <table>
            <tr>
                <td colspan="5" rowspan="2">
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="Palatino Linotype"
                        Font-Size="12pt" ForeColor="Red" Style="text-align: center" Text="Todays Date"
                        Width="116px"></asp:Label><asp:TextBox ID="TextBox2" runat="server" autocomplete="off" Width="103px"></asp:TextBox>
        
         
       <asp:Button ID="btnPrint" Text="Print" runat="server" OnClick="Print" />
                    
                </td>
            </tr>
           
        </table>
        
    
    
    <div id="dvCustomers" > 
     <asp:DataList ID="dlCustomers"  runat="server" RepeatColumns="4" RepeatDirection="Horizontal"  CssClass="row"  Width="612" style="margin:0 auto" >        
        <itemtemplate>        
     <%--   <table id="tblCustomer" style="width:4cm;height:2cm;text-align:center" >--%>
                   <%-- <tr>--%>
                    <td style="text-align:center;width:4cm;height:2cm;" >
                    <asp:Label ID="Label2" runat="server" Font-Size="10px"  Font-Names="Palatino Linotype" Text='<%# Bind("Item_Name") %>'></asp:Label>
                    <br />
                    <asp:Label ID="Label1" runat="server" Font-Size="15px" Font-Names="MRV Code39extMA" Text='<%# Bind("BC") %>'></asp:Label>
                    </td>
                 <%--   </tr>  --%>                 
    <%--    </table> 
            --%>
        </itemtemplate>
        </asp:DataList>
  </div>
</div>
       
       
     
    </form>
</body>
</html>