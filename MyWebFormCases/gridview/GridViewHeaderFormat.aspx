<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GridViewHeaderFormat.aspx.cs" Inherits="MyWebFormCases.gridview.GridViewHeaderFormat" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
</head>
<body>
    <form id="form1" runat="server">
       <div class="row">
        <div class="col-md-12">
            <div class="form-group">
                        <div class="table-responsive">

                            <asp:GridView ID="gvw" runat="server" AutoGenerateColumns="False" Font-Size="9pt"
                            OnDataBound="OnDataBound"   BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="5px" CellPadding="3" ForeColor="Black"
                                
                                CssClass="table table-striped" GridLines="None" BorderStyle="None" EmptyDataText="No Records Found" EmptyDataRowStyle-ForeColor="Red" DataSourceID="SqlDataSource1">
                                <AlternatingRowStyle BackColor="PaleGoldenrod" />
                                <Columns>
                                    <asp:TemplateField>
                                        <HeaderTemplate>
                                            <asp:CheckBox ID = "chkAll" runat="server" AutoPostBack="true" OnCheckedChanged="OnCheckedChanged" />
                                        </HeaderTemplate>
                                        <ItemTemplate>
                                            <asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="true" OnCheckedChanged="OnCheckedChanged" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText = "Sr.">
                                        <ItemTemplate>
                                            <asp:Label ID="lblRowNumber" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    
                                    <asp:BoundField DataField="CustomerID" HeaderText = "Type" ReadOnly="True" SortExpression="CustomerID"/>
                                    <asp:BoundField DataField="PostalCode"  HeaderText = "Name" ReadOnly="True" SortExpression="PostalCode" />
                                    <asp:BoundField DataField="Country"  HeaderText = "Department" ReadOnly="True" SortExpression="Country" />
                                    <asp:TemplateField HeaderText = "Amount" >
                                        <ItemTemplate>
                                            <asp:Label ID="lblAmount" runat="server" Text='<%# Eval("CompanyName") %>' CssClass="mytxtWidth75"></asp:Label>
                                            <asp:TextBox ID="txtAmount" Text='<%# Eval("CompanyName") %>'  CssClass="mytxtWidth75" runat="server" Visible = "false"/>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText = "Flat %">
                                        <ItemTemplate>
                                            <asp:Label ID="lblFixedPercent" runat="server" Text='<%# Eval("ContactName") %>' CssClass="mytxtWidth30"></asp:Label>
                                            <asp:TextBox ID="txtFixedPercent" Text='<%# Eval("ContactName") %>' CssClass="mytxtWidth30" runat="server" Visible = "false"/>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:Label ID="lblNMSDL1" runat="server" Text='<%# Eval("ContactTitle") %>'></asp:Label>
                                            <asp:TextBox ID="txtNMSDL1" Text='<%# Eval("ContactTitle") %>' CssClass="mytxtWidth30" runat="server" Visible = "false"/>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:Label ID="lblNMSBFB1" runat="server" Text='<%# Eval("Address") %>'></asp:Label>
                                            <asp:TextBox ID="txtNMSBFB1" Text='<%# Eval("Address") %>' CssClass="mytxtWidth30" runat="server" Visible = "false"/>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:Label ID="lblNMSDL2" runat="server" Text='<%# Eval("City") %>'></asp:Label>
                                            <asp:TextBox ID="txtNMSDL2" Text='<%# Eval("City") %>' CssClass="mytxtWidth30" runat="server" Visible = "false"/>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:Label ID="lblNMSBFB2" runat="server" Text='<%# Eval("Region") %>'></asp:Label>
                                            <asp:TextBox ID="txtNMSBFB2" Text='<%# Eval("Region") %>' CssClass="mytxtWidth30" runat="server" Visible = "false"/>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:Label ID="lblNMSDL3" runat="server" Text='<%# Eval("Phone") %>'></asp:Label>
                                            <asp:TextBox ID="txtNMSDL3" Text='<%# Eval("Phone") %>' CssClass="mytxtWidth30" runat="server" Visible = "false"/>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:Label ID="lblNMSBFB3" runat="server" Text='<%# Eval("Fax") %>'></asp:Label>
                                            <asp:TextBox ID="txtNMSBFB3" Text='<%# Eval("Fax") %>' CssClass="mytxtWidth30" runat="server" Visible = "false"/>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                </Columns>
                            </asp:GridView>

                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>" SelectCommand="SELECT * FROM [Customers]"></asp:SqlDataSource>

                        </div>
                    </div>
        </div>
    </div>

            <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>
    </form>
</body>
</html>
