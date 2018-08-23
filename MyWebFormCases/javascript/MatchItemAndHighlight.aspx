<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MatchItemAndHighlight.aspx.cs" Inherits="MyWebFormCases.javascript.MatchItemAndHighlight" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="../Scripts/jquery-1.10.2.min.js"></script>
 <%--   <script src="../Scripts/jquery-3.3.1.js"></script>--%>
</head>
<body>
    <form id="form1" runat="server"> 
        <div>
            <input type="button" name="name" value="getClose" id="btn" />    &nbsp;&nbsp;&nbsp;&nbsp;   <input type="text" name="name" value="" id="search" runat="server" /><input type="button"  value="replace" id="Button1"/>
             <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="CustomerID" DataSourceID="SqlDataSource1">
                 <Columns>
                     <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" ReadOnly="True" SortExpression="CustomerID" />
                     <asp:BoundField DataField="CompanyName" HeaderText="CompanyName" SortExpression="CompanyName" />
                   
                     <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                     <asp:BoundField DataField="Fax" HeaderText="Fax" SortExpression="Fax" />
                     <asp:TemplateField>
                         <ItemTemplate>
                             <asp:TextBox ID="TextBox1" runat="server" value='<%# Eval("fax") %>' ></asp:TextBox>
                               
                         </ItemTemplate>
                     </asp:TemplateField>
                 </Columns>
             </asp:GridView>
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>" SelectCommand="SELECT * FROM [Customers]"></asp:SqlDataSource>
        </div>
       <script>
           $("#Button1").click(
               function () {
                   //105 7319S 0A
                $("#search").val($("#search").val().replace(/\s/g, "").replace(/-/g, ""))   ;
               }
           )
           $("#btn").click(function () {

 $("input[type=text]").each(function (i, e) {
     var reg = /0522-556722/;
     
     if (reg.test(e.value)) {
         var etop = $(e).offset().top
      
         window.scrollTo(0, etop);
         e.focus();
                   //e.scrollIntoView();
                   e.style.color = "red";
     }

           })

           })
          
       </script>
    </form>
</body>
</html>
