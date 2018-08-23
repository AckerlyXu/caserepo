<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dataTypeXml.aspx.cs" Inherits="MyWebFormCases.javascript.dataTypeXml" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css" />
  
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
</head>
<body>
    <form id="form1" runat="server">
      

        

        <input type="text" name="name" value="" id="txt_search" />

        <select id="filter">
            <option>Workforce</option>
            <option>default</option>
        </select>
    </form>


</body>

    <script>
//        $(document).ready(function() 
//        {
//            var DataList = [];
//			BuildDataList();
			
//           $("input").on("keypress", function () {
//               populate2();
       
//            });
//			$("select").on("change", function() {	
//				DataList = [];
//				BuildDataList();	
//				populate2();
//			});

			
//		$( function populate2 () 
//			{
//				$( "#txt_search" ).autocomplete({ source: DataList});
//			} );

//function BuildDataList() {
//				$.ajax({
//					type: "GET",
//					async: false,
//					//url: "XML_F52E2B61-18A1-11d1-B105-00805F49916B13.xml",
//					url: "/javascript/XMLFile1.xml",
//					cache: false,
//					dataType: "xml",
//					success: function(xml) {
//						 var filter = $('#filter :selected').text();				 
                        	 
//						 switch (filter)
//						 {
//case "Workforce":
//								$(xml).find('Workforce Product').each(function()
//								 {
//									//Add Product Names To List								 
//									$(this).find("prd_name").each(function(){
//										var name = $(this).text();				
//										 DataList.push(String(name));
//									});
									
//									//Add Product Codes To List
//									$(this).find("prd_code").each(function(){
//										var code = $(this).text();				
//										 DataList.push(String(code));
//									});
									
//									//Add Product Descriptions To List
//									$(this).find("prd_description").each(function(){
//										var description = $(this).text();				
//										 DataList.push(String(description));
//									});
//								});
//							break;
//							default:
//								alert("No Products Available Currently!");
//							break;
//                        }	
                        
//					}
//				});
//			}
//		});
        


$(document).ready(function() 
        {
            var DataList = [];
			BuildDataList();
			//DataList["txt_search"] = DataList;
			
            $("input").on("keypress", function () {			
				//populate($(this).data());
				populate2();
            });
			
			$("select").on("change", function() {	
				DataList = [];
				BuildDataList();
				//DataList["txt_search"] = DataList;
				//populate($(this).data());	
				populate2();
			});
			
			
			
			 function populate2 () 
			{
				$( "#txt_search" ).autocomplete({ source: DataList});
			}
			
            

			function BuildDataList() {
				$.ajax({
					type: "GET",
					async: false,
					//url: "XML_F52E2B61-18A1-11d1-B105-00805F49916B13.xml",
					url: "/javascript/XMLFile1.xml",
					cache: false,
					dataType: "xml",
					success: function(xml) {
						 var filter = $('#filter :selected').text();				 
						 					 
						 switch (filter)
						 {
case "Workforce":
								$(xml).find('Workforce Product').each(function()
								 {
									//Add Product Names To List								 
									$(this).find("prd_name").each(function(){
										var name = $(this).text();				
										 DataList.push(String(name));
									});
									
									//Add Product Codes To List
									$(this).find("prd_code").each(function(){
										var code = $(this).text();				
										 DataList.push(String(code));
									});
									
									//Add Product Descriptions To List
									$(this).find("prd_description").each(function(){
										var description = $(this).text();				
										 DataList.push(String(description));
									});
								});
							break;
							default:
								alert("No Products Available Currently!");
							break;
						 }	
					}
				});
			}
		});

        </script>
</html>
