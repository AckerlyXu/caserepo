<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VideoControl.aspx.cs" Inherits="MyWebFormCases.Html5.VideoControl" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <video id="video" src="https://www.w3schools.com/html/mov_bbb.mp4" autoplay="autoplay" controls="controls" loop="loop" ></video>
            <input type="button" id="btn"  value="change" />   <input type="button" id="fullScreen"  value="fullScreen" />
        </div>
       
    </form>
     <script>
         var video = document.getElementById("video");
         document.getElementById("btn").onclick = function () {
              video.src = "http://www.w3school.com.cn/i/movie.ogg";
         }
         document.getElementById("fullScreen").onclick = function () {
             video.webkitRequestFullScreen();
         }
        </script>
</body>
</html>
