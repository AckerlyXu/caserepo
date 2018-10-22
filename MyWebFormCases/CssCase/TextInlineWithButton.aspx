<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TextInlineWithButton.aspx.cs" Inherits="MyWebFormCases.CssCase.TextInlineWithButton" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
</head>
<body>
    <form id="form1" runat="server">
       <div>
           
			<h2>my address</h2>
                <div  >
                    mytext for delete     mytext for delete     mytext for delete     mytext for delete     mytext for delete 
				
					<div  style="float:right;">		<button class="button js-form-submit form-submit" onclick="OpenNewWindow('Dynamicpage.aspx?webcode=ChangeRequest&amp;Action=Add&amp;cst_key={cst_key}&amp;cor_rat_code=AHA Contact Change Request&amp;cor_crr_code=Address Change Request','width=600')" href="javascript:void(0);" title="Edit Address Information" type="button">
							Edit
						</button>&nbsp;&nbsp;<button class="button js-form-submit form-submit"  onclick="AHAASyncDelete(this,'fef0ac71-ee49-40ca-b179-54d6a58e7382', '{cxa_key}');" type="button" style="background-color:red;">
							Delete
						</button></div>
					
              <hr />
                </div>


                <div >
                    mytext for edit      mytext for edit      mytext for edit       mytext for edit       mytext for edit
				
					<div  style="float:right;">	<button class="button js-form-submit form-submit" onclick="OpenNewWindow('Dynamicpage.aspx?webcode=ChangeRequest&amp;Action=Add&amp;cst_key={cst_key}&amp;cor_rat_code=AHA Contact Change Request&amp;cor_crr_code=Address Change Request','width=600')" href="javascript:void(0);" title="Edit Address Information" type="button">
							Edit
						</button></div>

					
              <hr />
              
                </div>


                 
            		
        </div>

    </form>
</body>
</html>
