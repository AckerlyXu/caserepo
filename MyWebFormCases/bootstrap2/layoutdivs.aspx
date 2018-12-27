<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="layoutdivs.aspx.cs" Inherits="MyWebFormCases.bootstrap2.layoutdivs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>BarCode Sticker Print Page</title>
    
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
            var divContents = document.getElementById("dvCustomers").innerHTML
            var printWindow = window.open('', '', 'height=2000,width=612');
            printWindow.document.write(divContents);
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
        
        <%-- My A4 page size: width 210mm, length 297mm    Top margin 5mm: 5:padding-top:5mm --%>
    <div id="dvCustomers" style="width:210mm;padding-top:5mm;padding-bottom:5px;box-sizing:border-box;padding-left:15px" class="border"> 
        
     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
        <%-- Side margin 4.5mm -> padding:0 4.5px --%>
        <div class="row " style="width:210mm;padding:0 10px">
        <asp:Repeater ID="Repeater1" runat="server">
        <itemtemplate>                  
               <%-- Vertical Pitch 24.0 mm ->  height:24.0 mm;--%>
            <div class="col-3 " style="padding:0px 2px;height:16.5mm;">
                <%-- please change border-radius according to your own requirement --%>
                       <div style="text-align:center;border-radius:1em;height:100%;padding:0px 5px" class=" border">
                   <%-- Label height 24mm 
                        Label width 48mm 
                       Number across: 4
                        Number down: 12
                       please change the font-size according to the label height and width   --%>
                    <asp:Label ID="Label2" runat="server" Font-Size="10px"  Font-Names="Palatino Linotype" Text='<%# Bind("Item_Name") %>'></asp:Label>
                    <br />
                    <asp:Label ID="Label1" runat="server" Font-Size="15px" Font-Names="MRV Code39extMA" Text='<%# Bind("BC") %>'></asp:Label>
                 

         </div>
                </div>
        </itemtemplate>
     </asp:Repeater>
            </div>
  </div>
</div>
       
       
     
    </form>
</body>
</html>