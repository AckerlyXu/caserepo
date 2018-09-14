<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="MyWebFormCases.ExtraControls.WebForm2" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:textbox runat="server" ID="name" TextMode="MultiLine" Height="200px" Width="200px"></asp:textbox>
      
          <asp:TextBox  ID ="txtDescription"  TextMode ="MultiLine"  Columns ="70"  Rows ="6"  runat ="server" /> 
                       
                         <ajaxToolkit:HtmlEditorExtender  ID ="HtmlEditorExtender1"  runat ="server"  TargetControlID ="txtDescription" > 
                             
                             <Toolbar> 
                                 <ajaxToolkit:Bold  /> 
                                 <ajaxToolkit:Italic  /> 
                                 <ajaxToolkit:Underline  /> 
                                 <ajaxToolkit:JustifyLeft  /> 
                                 <ajaxToolkit:JustifyCenter  /> 
                                 <ajaxToolkit:JustifyRight  /> 
                                 <ajaxToolkit:JustifyFull  /> 
                                 <ajaxToolkit:CreateLink  /> 
                                 <ajaxToolkit:UnLink  />                                 
                             </Toolbar> 
                         </ajaxToolkit:HtmlEditorExtender >                 
    </form>
</body>

</html>
