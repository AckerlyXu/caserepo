<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GridAlign.aspx.cs" Inherits="MyWebFormCases.Format.GridAlign" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
    /*td{
            box-sizing:border-box;
       
        }
    #table td{
     border:1px solid black
    }*/
    </style>
    <script src="../Scripts/jquery-3.3.1.js"></script>
</head>
<body>
    <form id="form1" runat="server">
     
       <table style="background-color: #0066CC" id="table">
        <tr>
            <td style="font-weight: bold;">
                Item ID
            </td>
            <td style="font-weight: bold;  ">
                Description
            </td>
            <td style="font-weight: bold;  ">
                Status
            </td>
        </tr>
        
    </table>
       <%--  <div style="overflow-x:scroll;  width: 150px;">--%>
       <%--  </div>--%>
   <%-- <div style="overflow-y: scroll; overflow-x: scroll; height: 200px; width: 210px;">--%>
        <asp:GridView ID="ItemGridView" runat="server" AutoGenerateColumns="false" 
            ShowHeader="true" >
            <Columns>
                <asp:BoundField DataField="ITEMID">
                   <ItemStyle HorizontalAlign="Left" ForeColor="#00C0C0" Wrap="true"  />
                </asp:BoundField>
                <asp:BoundField DataField="DSC" >
                    <ItemStyle HorizontalAlign="Left" ForeColor="#00C0C0" Wrap="true" />
                </asp:BoundField>
                <asp:BoundField DataField="ACTIVE" >
                    <ItemStyle  HorizontalAlign="Left" ForeColor="#00C0C0" Wrap="true" />
                </asp:BoundField>
            </Columns>
            <SelectedRowStyle BackColor="#FBAF29" />
        </asp:GridView>
 
      
        <script type="text/javascript">

            $(function () {
                $("td").each(
                    function () {
                        $(this).html("<div style='width:100px'>" + $(this).html() + "</div>");
                    }

                )

                $("#ItemGridView tr:first td").each(

                    function (index, value) {
                        //get the max width between the header column and gridview column
                        var maxWidth = Math.max($("#table td").eq(index).outerWidth(), $(value).outerWidth());


                        // set the gridview's column width to the maxWidth
                   //   $(value).innerWidth(100);
                   
                      // set the header column width to the maxWidth
                      //  $("#table td").eq(index).width(100);
                    }

                )
                // set the gridview's  row width to the row width of the header 
                //$("#ItemGridView").innerWidth($("#table").outerWidth());
                //$("#table").innerWidth($("#table").outerWidth());

                //var div = $(' <div style="overflow-y: scroll; overflow-x: scroll; height: 200px; width: 210px;"><div>');
                //div.append($("#table")).append($("#ItemGridView"));
                //$("#form1").html(div);
         
            })
       
    </script>
    </form>

</body>
</html>
