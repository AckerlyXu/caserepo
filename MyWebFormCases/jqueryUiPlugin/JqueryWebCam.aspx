<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="JqueryWebCam.aspx.cs" Inherits="MyWebFormCases.jqueryUiPlugin.JqueryWebCam" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="../Scripts/jquery-3.3.1.js"></script>
    <script src="JqueryWebCam/jquery.webcam.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <script type="text/javascript">
            $(document).ready(function () {

            
            var image = new Array();
            var ctx = null;
            var pos = 0;
            var w = 320;
            var h = 240;
            $("#webcam").webcam({
                width: 320,
                height: 240,
                mode: "callback",
                swffile: "/js/jscam_canvas_only.swf",
                onTick: function (remain) { },
                onSave: function (data) {
                    image.push(data);
                    pos += 4 * w;
                    if (pos == 4 * w * h) {
                        $.post("CamPost.ashx", { w: w, h: h, pix: image.join('|') }, function (msg) {
                            $("#flash").attr('src', msg);
                            $("#txt_img_path").val(msg);
                            pos = 0;
                            image = new Array();
                        });
                    }
                },
                onCapture: function () { webcam.save(); },
                onLoad: function () {
                    var x = 0;
                    var cams = webcam.getCameraList();
                    for (var i in cams) {
                        jQuery("#cams").append("设备信息:" + cams[i] + 设备信);
                        x++;
                    }
                    jQuery("#Div1").append("拥有设备数:" + x + "");
              }
                });
                    console.log(webcam);
        });
    </script>
    <div id="cam" style="width: 320px; height:240px; border: solid 1px #ddd; float:left;">
        <div id="camBox">
            <div id="webcam">
            </div>
        </div>
        
    </div>
    
     
    <div style="width: 320px; height: 240px; border: 1px solid #ddd; float:left;">
       
        <img id="flash" />       
        
    </div>
     <div style="clear: both;">
    </div>
      <input type="button" value="拍照" id="btn_pz" name="btn_pz"    onclick="webcam.capture()"/><br />
       <input type="text" id="txt_img_path"   style=" width:320px;"/>
        <div id="cams"></div>
         <div id="Div1"></div>   
    </form>
</body>
</html>
