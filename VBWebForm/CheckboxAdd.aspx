<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="CheckboxAdd.aspx.vb" Inherits="VBWebForm.CheckboxAdd" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <script src="Scripts/jquery-3.3.1.js"></script>

        <script type="text/javascript">
            $(function () {

                $("#Grv_CGL_Product_List :checkbox").on('change', function () {
                  
                    var idtSum = "";
                    var loanAmtSum = 0;
                    $("#code").html("");
                    $("#Grv_CGL_Product_List :checkbox:checked").each(
                        function () {
                            var row = $(this).parent().parent().parent();
                            idtSum += row.children(":eq(1)").html().trim() + ",";
                            loanAmtSum += parseFloat(row.children(":eq(3)").find("span").html().trim());
                        }

                    )

                    $("#idt").html(idtSum.slice(0, idtSum.lastIndexOf(",")));
                    $("#loan").html(loanAmtSum);
                })


            })

        </script>




<form id="Form1" method="post" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
    <ajaxToolkit:DropDownExtender ID="DropDownExtender1" runat="server"></ajaxToolkit:DropDownExtender>
     IDTSum:  <span id="idt"></span>   &nbsp;&nbsp;&nbsp;&nbsp;  LoanAmtSum: <span id="loan"></span> &nbsp;&nbsp;&nbsp;&nbsp;
        ProductCode: <span id="code"></span>

        <asp:UpdatePanel ID="UPCL" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
         
                                                                                              
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>                                                        
                <asp:Panel ID="Pnl_InNos" runat="server" Height="256px" Width="122px" BorderColor="#6666FF"
            BorderStyle="Solid" BorderWidth="1px">
            <table>
            <tr><td></td>
            <td>
            <asp:GridView ID="Grv_IWNos" runat="server" AutoGenerateColumns="False" CellPadding="4" 
                        CssClass="smalltext2" ForeColor="#333333" GridLines="Vertical">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="HD" HeaderText="Code" />
                    <asp:BoundField DataField="PR_ID" HeaderText="IW NO" >
                    <ItemStyle ForeColor="#0000CC" />
                    </asp:BoundField>
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            </td>
            </tr>
            </table>
        </asp:Panel>
        

        <asp:Panel id="pnl_CGLProdt_list" runat="server" Width="700px" Height="650px" BackColor="#9CAAC1">
         <table class="style95">
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        <table class="style95">
                            <tr>
                                <td class="style96">
                                    <asp:Label ID="Lbl_MemberName" runat="server"></asp:Label>
                                </td>
                                <td class="style97">
                                    <asp:Label ID="Lbl_LoanAmt" runat="server"></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="idt" runat="server"></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="loan" runat="server"></asp:Label>
                                </td>
                                <td><span id="code"></span>
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </td>
                    <td rowspan="2" valign="top">
                        <asp:ImageButton ID="Img_Btn_Close" runat="server" Height="30px" 
                            ImageUrl="~/Images/UserConsole_ICO/CloseBtnPNG.png" Width="30px" />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:Panel ID="Pnl_CGL_Pr_Gr2" runat="server" ScrollBars="Auto" Height="284px">
                        


                        <asp:GridView ID="Grv_CGL_Product_List" runat="server" 
                            AutoGenerateColumns="False" CellPadding="4" CssClass="smalltext Grid" 
                            ForeColor="#333333">
                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            <Columns>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:CheckBox ID="cbx_cgl" runat="server" CssClass="normalText2" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:BoundField DataField="IDT" HeaderText="IDT" />
                                <asp:BoundField DataField="Productcode" HeaderText="Product Code" />
                       
                                <asp:TemplateField HeaderText="Loan Amt.">
                                    <ItemTemplate>
                                        <asp:Label ID="lblValue" runat="server" Text='<%# Eval("LoanAmt") %>'></asp:Label>
                                        
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                            <EditRowStyle BackColor="#999999" />
                            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#E9E7E2" />
                            <SortedAscendingHeaderStyle BackColor="#506C8C" />
                            <SortedDescendingCellStyle BackColor="#FFFDF8" />
                            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                        </asp:GridView>
                        </asp:Panel>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
          
            </asp:Panel>


              

                <ajaxToolkit:ModalPopupExtender ID="MPE_CGL_POPU" runat="server" TargetControlID="btnHidden2"
                    PopupControlID="pnl_CGLProdt_list" PopupDragHandleControlID="PopupHeader" BackgroundCssClass="modalBackground"
                    CancelControlID="img_btn_Close" Drag="true">
                </ajaxToolkit:ModalPopupExtender>
                <asp:Button ID="btnHidden2" runat="Server"  Text="button" />
            </ContentTemplate>
        </asp:UpdatePanel>

       

       
        </form>
</body>
</html>
