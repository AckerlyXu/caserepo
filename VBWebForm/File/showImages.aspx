<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="showImages.aspx.vb" Inherits="VBWebForm.showImages" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
    <style type="text/css">
      .picked {
          /*border:1px solid lawngreen*/
          border-color: lawngreen;
          border-width: 5pt;
          border-style:solid
       
      }
      .blkborder {
          border-color: black;
          border-width: 1pt;
      }
      body {
          margin-left: 15px;
      }
    </style>
    <script src="../Scripts/jquery-3.3.1.js"></script>
   
</head>
<body>
    <form id="form1" runat="server">
        <asp:Panel ID="PanelImages" runat="server" ScrollBars="Vertical" 
        BackColor="#CCCCCC" CssClass="Hide" ClientIDMode="Static">

        <asp:DataList ID="PicturesInFolder" runat="server" CellPadding="3" 
            BorderColor="Black" ItemStyle-BorderWidth="1pt" ItemStyle-BorderColor="Black" 
            ItemStyle-BorderStyle="Solid" RepeatDirection="Horizontal" 
            RepeatLayout="Flow" RepeatColumns="4" 
            Caption="Images in selected folder">
            <ItemTemplate>
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# "/images/WingtipToys/" + Eval("ImagePath") %>'   />
                        <asp:Label ID="LblImageUrl" runat="server" Text='<%# Container.DataItem("ProductName") %>' CssClass="Hide"></asp:Label>
                        <asp:Label ID="LblFileName" runat="server" Text='<%# Container.DataItem("ProductName") %>' CssClass="Hide"></asp:Label>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                        <asp:CheckBox ID="ckPickPhoto" runat="server" Text="Upload" CssClass="dummy" />
                        <asp:CheckBox ID="ckJobID" runat="server" Text="Job ID" />
                    </div>
                </div>
            </ItemTemplate>
            <AlternatingItemStyle BackColor="Transparent" />
            <ItemStyle BorderColor="Black" BorderStyle="Solid" BorderWidth="1pt" />
        </asp:DataList>
    </asp:Panel>

        <asp:Button ID="Button1" runat="server" Text="upload"  OnClick="Button1_Click"/>
        check all or remove all:<input id="Checkbox1" type="checkbox" checked="checked" />
         <script type="text/javascript">

        //Bind keydown event to document
        $(function () {
            $("img").click(function () {
                $(this).toggleClass("picked")
                if ($(this).hasClass("picked")) {
                    $(this).parent().parent().siblings().find(".dummy :checkbox").prop("checked", true);
                } else {
                     $(this).parent().parent().siblings().find(".dummy :checkbox").prop("checked", false);
                }
              
               
            })
            var selectedDiv;  //define a variable to record last selected Div
            var checkedBoxes;//define a variable to record last selected checkbox
            $("#Checkbox1").change(function () {
                //if ($(this).prop("checked")) {
                //    $(".dummy :checkbox").prop("checked", true);
                //    $("img").addClass("picked");
                //} else {
                //    $(".dummy :checkbox").prop("checked", false);
                //    $("img").removeClass("picked");
                    
                //}
                if (selectedDiv == undefined ) {
                    selectedDiv =  $("#PicturesInFolder :checkbox:checked ").parent().parent().parent().parent().find("img") //record selected img
                        .toggleClass("picked");  //please use your css("background-color","lawngreen")
                    checkedBoxes = $("#PicturesInFolder :checkbox:checked ");//record selected checkbox
                    checkedBoxes.prop("checked", false);
               
                } else {
                    if ($("#PicturesInFolder :checkbox:checked ").length == 0) {
                         selectedDiv.toggleClass("picked");//please use your css("background-color","")
                    checkedBoxes.prop("checked", true)
                  
                    }
                     checkedBoxes = undefined 
                    selectedDiv = undefined
                 
                }
              
            })
            
             
        });
 
     
    </script>

    </form>
</body>
</html>
