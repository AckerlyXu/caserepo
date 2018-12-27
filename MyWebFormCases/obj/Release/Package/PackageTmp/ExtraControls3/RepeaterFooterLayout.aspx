<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RepeaterFooterLayout.aspx.cs" Inherits="MyWebFormCases.ExtraControls3.RepeaterFooterLayout" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
       <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css">
</head>
<body>
    <form id="form1" runat="server">
        <asp:Repeater ID="rptrActivities" runat="server" DataSourceID="">
                                <HeaderTemplate>
                                    
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <tr>
                                        <td>
                                            <span style="font-size: 1.5em; color:tomato;">
                                              <i class="fas fa-circle"></i>
                                            </span>
                                        </td>
                                        <td>
                                            
                                            
                                            <%# DataBinder.Eval(Container.DataItem, "code") %>
                                            <%--<asp:HiddenField ID="hdnFieldFunction" runat="server" Value='<%# Eval("Code") %>' />--%>
                                        </td>
                                       
                                        
                                        
                                        <td>
                                            <%# DataBinder.Eval(Container.DataItem, "code") %>
                                          
                                            <%# DataBinder.Eval(Container.DataItem, "code") %>
                                          
                                            
                                        </td>

                                        
                                        <td>
                                            <%# DataBinder.Eval(Container.DataItem, "code") %>
                                          
                                        </td>
                                        <td>
                                            <div class="form-group">
                                                <asp:Label runat="server" AssociatedControlID="txtRecord" CssClass="col-md-5 control-label" Text=""></asp:Label>
                                                <div class="col-md-12">
                                                    
                                                    <asp:TextBox ID="txtRecord" runat="server"  CssClass="form-control" MaxLength="3" Text='<%#Bind("code") %>' Width="50px"></asp:TextBox>
                                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtRecord"
                                                        CssClass="text-danger" Display="Dynamic" ErrorMessage="*" ValidationGroup="SaveRecord" />
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <asp:Label runat="server" AssociatedControlID="txtEvidence" CssClass="col-md-5 control-label" Text=""></asp:Label>
                                                <div class="col-md-12">
                                                    
                                                    <asp:TextBox ID="txtEvidence" runat="server" TextMode="MultiLine" Text='<%#Bind("code") %>' CssClass="form-control" MaxLength="255"></asp:TextBox>
                                                  
                                                </div>
                                            </div>
                                            
                                        </td>
                                        <td>
                                            <asp:CheckBox ID="chkStumbling" runat="server" Checked="false" Text='' CssClass="checkbox" />
                                            <div class="form-group">
                                                <asp:Label runat="server" AssociatedControlID="txtEvidence" CssClass="col-md-5 control-label" Text=""></asp:Label>
                                                <div class="col-md-12">
                                                    
                                                    <asp:TextBox ID="txtStumblingReasons" runat="server" TextMode="MultiLine" Text='<%#Bind("code") %>' CssClass="form-control" MaxLength="255"></asp:TextBox>
                                                   
                                                </div>
                                            </div>
                                            
                                        </td>
                                       
                                    </tr>
                                </ItemTemplate>
                                <FooterTemplate>
                                    <asp:Button ID="btnSaveSection" runat="server" CssClass="btn btn-default" Text="Save This Section" />
                                </FooterTemplate>
                            </asp:Repeater>
    </form>
</body>
</html>
