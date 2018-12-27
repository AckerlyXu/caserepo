<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NestedGridViewWithAjax.aspx.cs" Inherits="MyWebFormCases.gridview3.NestedGridViewWithAjax" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
 #GridView1 table{
     width:100%
 }
    </style>
    <script src="../Scripts/jquery-1.9.1.js"></script>
     
</head>
<body>
    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="CategoryID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:TemplateField HeaderText="Action">
                     
                    <ItemTemplate>
                        <asp:HiddenField runat="server" Value='<%#Eval("CategoryId") %>' > </asp:HiddenField>
                    <img src="/images/icons/mini_add.png" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="CategoryName" HeaderText="CategoryName" SortExpression="CategoryName" />
                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
              
            </Columns>
        </asp:GridView>
        <asp:Button ID="Button1" runat="server" Text="print"  />

        <script>
            $(function () {
                //bind event to every image in the gridview
                $("#GridView1 img").click(function () {
                    //get the tr element the image is in
                    let tr = $(this).closest("tr");
                    // check whether the data is loading
                    if (tr.next().find("img").attr("src") == "/images/icons/reload.png") {
                        // do what you want to user to do
                        alert("please be patient, the data is loading")
                        return;
                    }

                    // if the user want to close
                    if ($(this).attr("src") === "/images/icons/clear.png") {
                        //change it to the open icon
                        $(this).attr("src", "/images/icons/mini_add.png") 
                        // ensure the nested table is loaded
                        if (tr.next().find("table").length == 1) {
                             //hide the table
                             tr.next().hide(); 
                             return;
                        }
                    }

                    //if the user wants to open the nested table
                    if ($(this).attr("src") === "/images/icons/mini_add.png") {

                        // change the img to close icon
                        $(this).attr("src", "/images/icons/clear.png");
                        // ensure the table is loaded 
                        if (tr.next().find("table").length == 1) {
                            //show the table
                            tr.next().show();
                            return;
                        }
                        //here the table is not loaded
                        
                        if (tr.next().find("img").attr("src") !="/images/icons/reload.png") {
                            //create an loading image
                        var image = "<tr><td colspan='3' style='text-align:center'><img src='/images/icons/reload.png' width='200px'  /></td></tr>";
                        //insert after the tr
                              tr.after(image);
                        }
                      
                        //load the table
                        
                        $.ajax({
                            "url": "/Services/res1.ashx",
                            "data": { id: $(this).siblings("input[type=hidden]").val() },
                            "dataType": "json",
                            "success": function (data) {

                                //create a table element
                                var table = "<tr ><td colspan='3'><table>";

                                //loop through the data and insert into the created table
                                $.each(data, function (index, ele) {
                                     var content="<tr >"
                                    content += "<td style='border:1px solid black'>" + ele.Id + "</td>";
                                    content += "<td style='border:1px solid black'>" + ele.ProductName + "</td>";
                                    content += "<td style='border:1px solid black'>" + ele.Description + "</td>";
                                    content += "<td style='border:1px solid black'>" + ele.ImagePath + "</td>";
                                    content += "<td style='border:1px solid black'>" + ele.UnitPrice + "</td>";
                                    content += "</tr>";
                                  
                                    table += content;
                                })
                              
                                table += "</table></td></tr>";
                                //remove the loading img
                                tr.next().remove();
                                //insert the newly created table after the tr
                                tr.after(table);
                            }
                        })

                    }
                    
                })

                $("#Button1").click(function () {

                
                    $("img").parent().parent().next().show();
                    $(this).hide();
                        window.print();
                    return false
                })


           })
        </script>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WingtipToysConnectionString2 %>" SelectCommand="SELECT [CategoryName], [Description], [CategoryID] FROM [Categories]"></asp:SqlDataSource>
    </form>
</body>
</html>
