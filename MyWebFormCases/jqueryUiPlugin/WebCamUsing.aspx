<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebCamUsing.aspx.cs" Inherits="MyWebFormCases.jqueryUiPlugin.WebCamUsing" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<script src="../Scripts/jquery-3.3.1.js"></script>
<script src="webcamjs-master/webcam.js"></script>
<body>
    <form id="form1" runat="server">
       <div id="my_camera"></div>
<img src="" id="img">


        <script language="JavaScript">
    //设置镜头的大小
    Webcam.set({
         width: 320,
         height: 240,
         image_format: 'jpeg',
         jpeg_quality: 90
    }); 
    Webcam.attach( '#my_camera' );

    function take_snapshot() {
        Webcam.snap( function(data_uri) {
            $("#img").attr("src", data_uri);
        } );
    }
            function upload() {
                Webcam.upload($("#img").attr("src"), javaurl, function (code, text) {
                    //文件上传成功后，要执行的内容                            
                });
            }
            
</script>

<a href="javascript:void(take_snapshot())">拍照</a>
<a href="javascript:void(upload())">上传</a>


    </form>
</body>
</html>
