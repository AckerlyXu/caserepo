<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UploadMutipleFilesExe.aspx.cs" Inherits="MyWebFormCases.FileDemo.UploadMutipleFilesExe" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="../Scripts/jquery-3.3.1.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <asp:FileUpload ID="FileUpload1" runat="server" AllowMultiple="true" />
        <input id="Button1" type="button" value="button" onclick="saveFiles()" />
      
          <script>


  var tempfiles=[];//use an array to store all the files
function saveFiles(){
    var formData = new FormData();
    for (var i = 0; i < tempfiles.length; i++) {
   formData.append('files',tempfiles[i]);//get all the files and add it into formData
      
    }

   
    $.ajax({  //send request containing files to server
    url: '/Services/upload.ashx',
    type: 'POST',
    cache: false,
    data: formData,
    processData: false,
    contentType: false
    }).done(function (res) {
        console.log(res); // if success
        }).fail(function (res) { }); 
}



    $(function(){

$("#FileUpload1").change(function(){
   for(var i =0 ; i<this.files.length;i++)//put all the files into the array
   tempfiles.push(this.files[i]);
      
})

})
    </script>
    </form>

  
</body>
</html>
