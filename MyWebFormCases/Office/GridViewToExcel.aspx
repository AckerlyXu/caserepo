<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GridViewToExcel.aspx.cs" Inherits="MyWebFormCases.Office.GridViewToExcel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        td{
            box-sizing:border-box;
        word-wrap:break-word;
    word-break:break-all;
     

        }


   
    </style>
    <script src="../Scripts/jquery-3.3.1.js"></script>
</head>
<body>
    <form id="form1" runat="server">
     

         <div style="overflow-y: scroll; overflow-x: scroll; height: 200px; width: 210px;" id="container"></div>



    
        <asp:GridView ID="ItemGridView" runat="server" AutoGenerateColumns="false" 
            ShowHeader="true" AllowPaging="true"  PageSize="2" >
            <HeaderStyle BackColor="Blue" Font-Bold="true" />
            
            <Columns >
                <asp:BoundField DataField="ITEMID" HeaderText="ITEMID">
                    <ItemStyle Width="100px" />
                   <ItemStyle HorizontalAlign="Left" ForeColor="#00C0C0" Wrap="true"  />
                </asp:BoundField>
                <asp:BoundField DataField="DSC" HeaderText="DSC" >
                     <ItemStyle Width="100px" />
                    <ItemStyle HorizontalAlign="Left" ForeColor="#00C0C0" Wrap="true" />
                </asp:BoundField>
                <asp:BoundField DataField="ACTIVE" HeaderText="ACTIVE" >
                     <ItemStyle Width="100px" />
                    <ItemStyle  HorizontalAlign="Left" ForeColor="#00C0C0" Wrap="true" />
                </asp:BoundField>
            </Columns>
            <SelectedRowStyle BackColor="#FBAF29" />
        </asp:GridView>
 
        <asp:Button ID="Button1" runat="server" Text="export"  OnClick="Button1_Click" />
        <script type="text/javascript">

            $(function () {

             $("#ItemGridView").innerWidth($("#ItemGridView").innerWidth());
            

               
               $("#container").append($("#ItemGridView"));
           
            })
       
    </script>
    </form>

</body>
</html>