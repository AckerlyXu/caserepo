<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RepeaterAggregate.aspx.cs" Inherits="MyWebFormCases.ExtraControls.RepeaterAggregate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
</head>
<body>
    <form id="form1" runat="server">
        
        <asp:Repeater ID="Repeater1" runat="server"  >
            <HeaderTemplate>

                 <table class="table table-bordered bg-secondary">
           <thead>

               <tr> <th class="text-center">BatchNo</th><th class="text-center">Total Qty</th> <th class="text-center" colspan="2">Dep1</th><th class="text-center" colspan="2">Dep2</th><th class="text-center" colspan="2">Total For Dep1&Dep2</th></tr>
               <tr> <th></th> <th></th> <th class="text-center">Qty</th><th class="text-center">Value</th><th class="text-center">Qty</th><th class="text-center">Value</th><th class="text-center">Total Qty</th><th class="text-center">Total Value</th>   </tr>

           </thead>
          <tbody>
              
            </HeaderTemplate>
       <ItemTemplate>
    
            <tr>
                <td class="text-center">
                         <%# Eval("BatchNo") %>
         </td>
          

                    <td class="text-center">  <%# Convert.ToDouble( Eval("Total_Qty")) ==0?"":Eval("Total_Qty") %> </td>
                  <td class="text-center">   <%# Convert.ToDouble( Eval("Dep1Qty")) ==0?"":Eval("Dep1Qty") %>  </td>
                 <td class="text-center">   <%# Convert.ToDouble( Eval("Dep1Value")) ==0?"":Eval("Dep1Value") %></td>
                  <td class="text-center">  <%#   Convert.ToDouble( Eval("Dep2Qty")) ==0?"":Eval("Dep2Qty") %>  </td>
                 <td class="text-center">     <%#  Convert.ToDouble( Eval("Dep2Value")) ==0?"":Eval("Dep2Value")  %></td>
                  <td class="text-center">    <%# Convert.ToDouble( Eval("TotalQty")) ==0?"":Eval("TotalQty") %></td>
                 <td class="text-center">   <%#  Convert.ToDouble( Eval("TotalValue")) ==0?"":Eval("TotalValue") %></td>
            </tr>
       </ItemTemplate>
              
            
            <FooterTemplate>

                 <tr><td ></td><td ></td><td ></td><td ></td><td ></td><td ></td><td ></td><td ></td></tr>
                <tr><td></td><td></td><td></td><td></td><td></td><td class="text-center">Total</td><td class="text-center">
                    <asp:Literal ID="TotalQTY" runat="server"></asp:Literal></td><td class="text-center">  <asp:Literal ID="TotalValue" runat="server"></asp:Literal></td></tr>
          </tbody>
        </table>
         

            </FooterTemplate>
                
              </asp:Repeater>
           
    </form>
</body>
</html>
