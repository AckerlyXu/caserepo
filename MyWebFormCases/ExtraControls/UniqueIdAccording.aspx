<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UniqueIdAccording.aspx.cs" Inherits="MyWebFormCases.ExtraControls.UniqueIdAccording" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   
<style type="text/css"> 
 .header {background-color: blue;} 
 .content {border: solid;}
</style>
 
</head>
       <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
	   <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>
<body>
    <form id="form1" runat="server">
      
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
     
        
<div class="accordion" id="accordionExample">

    <%foreach (Model item in list2)
        {%>

            <div class="card">
    <div class="card-header" id="headingOne">
      <h5 class="mb-0">
        <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapseOne<%=item.Id %>" aria-expanded="true" aria-controls="collapseOne">
          Collapsible Group Item #<%=item.Id %>
        </button>
      </h5>
    </div>

    <div id="collapseOne<%=item.Id %>" class="collapse " aria-labelledby="headingOne" data-parent="#accordionExample">
      <div class="card-body">
      name: <%=item.Name %>  &nbsp;&nbsp;   address: <%=item.Address %>
      </div>
    </div>
  </div>

      <%  } %>


  
  
 
</div>


        <hr />

        <div class="accordion" id="accordionExample1">

    <%foreach (Model item in list2)
        {%>

            <div class="card">
    <div class="card-header" id="headingOne">
      <h5 class="mb-0">
        <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapseOne<%=item.Id +"2"%>" aria-expanded="true" aria-controls="collapseOne">
          Collapsible Group Item #<%=item.Id %>
        </button>
      </h5>
    </div>

    <div id="collapseOne<%=item.Id+"2" %>" class="collapse " aria-labelledby="headingOne" data-parent="#accordionExample">
      <div class="card-body">
      name: <%=item.Name %>  &nbsp;&nbsp;   address: <%=item.Address %>
      </div>
    </div>
  </div>

      <%  } %>


  
  
 
</div>
   

       
       
    </form>
</body>
</html>
