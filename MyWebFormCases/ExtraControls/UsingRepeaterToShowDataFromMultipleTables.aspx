<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UsingRepeaterToShowDataFromMultipleTables.aspx.cs" Inherits="MyWebFormCases.ExtraControls.UsingRepeaterToShowDataFromMultipleTables" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
    .header { font-size: larger; font-weight: bold; cursor: hand; cursor:pointer;
               background-color:#cccccc; font-family: Verdana; }
    .details { display:none; visibility:hidden; 
               font-family: Verdana; }
</style>
</head>
<body>
    <form id="form1" runat="server">
     
 
   <div style="overflow: scroll; height: 500px; width: 905px">
    <asp:Repeater ID="Repeater1" runat="server" >
 
            <HeaderTemplate>
                <asp:Panel ID="Panel1" runat="server" BackColor="#333333">
                    
                     <table id="table1" width="905" style="table-layout: fixed; border:solid 2px black">
        
                </asp:Panel>
        <table id="table12" width="905" style="table-layout: fixed; border:solid 2px black">
        <thead>
            
         </thead>
    </HeaderTemplate>
   <ItemTemplate>
            
                <br />
                <br />
                 
    
         
     <div id='d<%# DataBinder.Eval(Container, "ItemIndex") %>' class="details">
     
      <asp:Panel ID="Panel2" runat="server" Height="125px">
      <br />
          <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    <asp:TextBox ID="TextBox1" runat="server" Text=''></asp:TextBox>
          
                </asp:Panel>
       
      
     </div>
 
   
            </ItemTemplate>
        <AlternatingItemTemplate>
                            <li style="background-color:white">
                               <%-- <%# DataBinder.Eval(Container.DataItem, "Question") %>--%>
                               <asp:RadioButtonList ID="RadioButtonList5" runat="server"  >
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                        </asp:RadioButtonList>
                            </li>
                        </AlternatingItemTemplate>
    <FooterTemplate>
        </table>
    </FooterTemplate>
      </asp:Repeater>
     </div>
   <%-- <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:QSCTestConnectionString %>" 
        SelectCommand="SELECT QuestOptiodetail.QuestOption, QuestOptiodetail.CorrectAnswer, QuestionDetail.QuestDetailID, QuestOptiodetail.QuestDetailID AS Expr1, QuestionDetail.Question FROM QuestOptiodetail INNER JOIN QuestionDetail ON QuestOptiodetail.QuestDetailID = QuestionDetail.QuestDetailID "></asp:SqlDataSource>--%>
    <br />
    <br />
   
  
    </form>
</body>
</html>
