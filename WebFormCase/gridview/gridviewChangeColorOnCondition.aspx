<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="gridviewChangeColorOnCondition.aspx.cs" Inherits="WebFormCase.gridview.gridviewChangeColorOnCondition" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel runat="server" ID="srchuppan" UpdateMode="Always"><ContentTemplate>
   <asp:GridView ID="GridView5" Style="margin-bottom: 2%; width: 100%; font-family: '0 Nazanin'; direction: rtl; background-color: white; margin: auto; text-align: center;" CssClass="table table-bordered resgrid" AutoGenerateColumns="false" runat="server"
       OnRowDataBound="GridView5_RowDataBound">
    <Columns>
         <asp:TemplateField ItemStyle-Font-Size="13" HeaderStyle-Font-Size="14" HeaderText="ydd">
            <ItemTemplate>
                <asp:ImageButton ID="btnpopup" runat="server" ToolTip='<%# Eval("ydd") %>' Width="40" Height="40" ImageUrl="~/images/searchbox_button.png" />
       
                <ajaxToolkit:ModalPopupExtender ID="mpe" runat="server" TargetControlID="btnpopup" PopupControlID="pnlpopup"
                    CancelControlID="btnCancelpopup" EnableViewState="true" DropShadow="true" />

                <asp:Panel ID="pnlpopup" CssClass="alertBox backpic" BackColor="White" runat="server" Width="400px">
                    <h1>یادداشت خود را بنویسید</h1>
                    <p style="color: red; font-size: 12px">(<%# Eval("order_id") %>)</p>
                    <hr />
                    <textarea id="YY" class="form-control" rows="3" style="width: 80%; margin: auto; font-size: 16px" runat="server"></textarea>
                    <hr />
                    <asp:Button ID="Yadsrch" OnClick="Yadsrch_Click" CssClass="DokmeDefBlue" runat="server" Text="ثبت یادداشت" />

                    <asp:Button ID="btnCancelpopup" CssClass="DokmeDefRed" runat="server" Text="بستن" />
                    <hr />
                </asp:Panel>
            </ItemTemplate>
            


        </asp:TemplateField>

         <asp:BoundField DataField="P_name" ItemStyle-Font-Size="10" HeaderStyle-Font-Size="14" HeaderText="P_name" />
              <asp:BoundField DataField="ostatus" ItemStyle-Font-Size="13" HeaderStyle-Font-Size="14" HeaderText="ostatus" />

        </Columns>
    </asp:GridView>
   
</ContentTemplate>
            </asp:UpdatePanel>
        
         <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>
    </form>
</body>
</html>
