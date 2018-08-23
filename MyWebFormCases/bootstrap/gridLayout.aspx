﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="gridLayout.aspx.cs" Inherits="MyWebFormCases.bootstrap.gridLayout" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="row">
<div class="col-3  form-group">
<asp:Label ID="Label16" runat="server" Text="SPN :" CssClass="control-label label-top-buffer"></asp:Label>
<asp:TextBox ID="txtSPN" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
</div>
<div class="col-3  form-group">
<asp:Label ID="Label2" runat="server" Text="Name :" CssClass="control-label label-top-buffer"></asp:Label>
<asp:TextBox ID="txtName" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
</div>
<div class="col-3  form-group">
<asp:Label ID="Label1" runat="server" Text="Booking Date & Time :" CssClass="control-label label-top-buffer"></asp:Label>
<asp:TextBox ID="txtBookingDateTime" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
</div>
<div class="col-3  form-group">
<asp:Label ID="Label22" runat="server" Text="Booking Number :" CssClass="control-label label-top-buffer"></asp:Label>
<asp:TextBox ID="txtBookingNumber" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
</div>
</div>
    </form>
</body>
    
         <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>
</html>
