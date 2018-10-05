﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ScrollAnimate.aspx.cs" Inherits="MyWebFormCases.javascript.ScrollAnimate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<script src="../Scripts/jquery-3.3.1.js"></script>
<body>
    <form id="form1" runat="server">
       <div style="overflow-y: scroll; overflow-x: hidden; height: 400px; width: 1900px;" id="DV">

        <asp:GridView ID="ItemGridView" runat="server" AutoGenerateColumns="false" > 

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
</div>
       <%-- <input type="button" value="toEnd" id="toEnd" /><input  type="button" id="toHome" value="toHome"/>--%>
         <script>
             $(function () {        

  //               $("#toEnd").click(
  //                   function () {
  //$('#DV').animate({ scrollTop:$('#ItemGridView').height() - $("#DV").height() }, 1200);

  //                   }
  //               )
  //                $("#toHome").click(
  //                   function () {
  //$('#DV').animate({ scrollTop:0 }, 1200);

  //                   }
  //               )
         
                 $(window).keyup(function (e) {
                     console.log(e.keyCode)
                 
                       
                var keyCode = window.event ? e.keyCode : e.which;
                //End Key
                         if (keyCode == 35) {
                          $('#DV').animate({ scrollTop: $('#ItemGridView').height()  }, 1200);
                  
                           
                }
                //Home Key
                     if (keyCode == 36) {
                         $('#DV').animate({ scrollTop: 0 }, 1200);


                     }     

            });


                
        
           console.log($('#ItemGridView').height());
           console.log($(document).height());

       })
   </script>
    </form>
</body>
</html>
