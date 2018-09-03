<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BootstrapMutiselect.aspx.cs" Inherits="MyWebFormCases.bootstrap.BootstrapMutiselect" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" >
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-multiselect/0.9.15/css/bootstrap-multiselect.css" >
    <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
     
     <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>

    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" ></script>

   <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-multiselect/0.9.15/js/bootstrap-multiselect.js"></script>
    
   
</head>
<body>
    <form id="form1" runat="server">
      <div class="row">  
        <div class="col-lg-12 "> 
            <div class="table-responsive">
        <asp:GridView ID="gvwCategories"  runat="server"
                 CssClass="table table-bordered table-striped" AutoGenerateColumns="false" 
                    ClientIDMode="Static" BorderWidth="1px"  OnRowCommand="gvwCategories_RowCommand"
                    BorderStyle="None" BorderColor="#DEBA84" HeaderStyle-CssClass="GridHeader" 
                    EmptyDataText="No Records Found!" EmptyDataRowStyle-ForeColor="Red" EmptyDataRowStyle-CssClass ="gvEmpty" 
                 >
                <HeaderStyle ForeColor="White" Font-Bold="True" BackColor="#428bca"></HeaderStyle>
                <Columns>
                    
                   <asp:TemplateField HeaderText="Code">
                        <ItemTemplate>
                            <asp:Label runat="server" ID="lblCode" Text='<%#Eval("Code") %>'></asp:Label>
                            <asp:HiddenField ID="hdfEntryNo" runat="server" Value='<%# Bind("EntryNo") %>' />
                     
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Description">
                        <ItemTemplate>
                            <asp:Label runat="server" ID="lblDescription" Text='<%#Eval("Description") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Category">
                        <ItemTemplate>
                                                            
                            <asp:HiddenField ID="HiddenField1" runat="server" />
             <asp:ListBox ID="ListBox1" runat="server" DataSourceID="SqlDataSource1" DataTextField="category" DataValueField="category" SelectionMode="Multiple" ></asp:ListBox>

          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EntityExe %>" SelectCommand="SELECT [id], [category] FROM [category]"></asp:SqlDataSource>

                        </ItemTemplate>
                    </asp:TemplateField>
                    
                    <asp:TemplateField HeaderText="Action">
                        <ItemTemplate>
                            <asp:linkbutton id="Linkbutton1" Text="Edit"  ToolTip="Update Record" CommandName="EditRow" runat="server" CssClass="btn btn-primary"/> 
                        </ItemTemplate>
                    </asp:TemplateField>

                </Columns>
                </asp:GridView>
                   </div>
        </div>

        

        <script type="text/javascript">
    $(document).ready(function() {
        $("[id*=ListBox1]").multiselect({

            includeSelectAllOption: true,
            onChange: function (option, checked, select) {
                //get the hidden field
                var $hidden = option.parent().parent().parent().find("input[type=hidden]");
                var str = "";
                //get the checkboxes
                option.parent().parent().find("div ul input:gt(0)")
                    .each(function () {
                        if ($(this).prop("checked")) {
                            str += $(this).val() + ",";
                        }

                    })
               // set the hiddenfield's value
                $hidden.val(str);
            
            },
            onDeselectAll: function () {
                $(this).get(0).$select.parent().parent().find("input[type=hidden]").val("");
            },
            onSelectAll: function () {
               var $hidden= $(this).get(0).$select.parent().parent().find("input[type=hidden]")
                var str = "";
                $(this).get(0).$container.find("input:gt(0)")
                    .each(function () {
                       
                            str += $(this).val() + ",";
                       
                    })
                $hidden.val(str);

        }
        })
    });
</script>
    </form>
</body>
</html>
