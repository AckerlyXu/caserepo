<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <meta http-equiv="Content-Security-Policy" content="upgrade-insecure-requests" />
    <title></title>
    <%--<script src="../Scripts/jquery-3.3.1.js"></script>--%>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
   <%-- <script type="text/javascript" src="jquery.min.js"></script>
<script type="text/javascript" src="jquery.maphilight.min.js"></script>--%>
    <script src="plugin/jquery.maphighlight.js"></script>
    <script type="text/javascript">
        $(function () {
            console.log($.fn.jquery)
            $('.map').maphilight();
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Image Map</h2>
    <div>
        Going to create this one http://in.jagran.yahoo.com/epaper/
        <br />
        Get your coordinate at http://www.image-maps.com
        <br />
        Using jQuery Library http://archive.plugins.jquery.com/project/maphilight
    </div>
        <script src="http://archive.plugins.jquery.com/project/maphilight"></script>
        <br /><br />
    <div>
        <%--<img src="images/linksOnImage.jpg" usemap="#urls" class="map">
        <map name="urls">
            <area shape="rect" coords="0,0,142,50" href="javascript:alert('Navigate to ITORIAN');">
            <area shape="rect" coords="2,48,139,96" href="javascript:alert('Navigate to GOOGLE');">
            <area shape="rect" coords="2,93,139,141" href="javascript:alert('Navigate to YAHOO');">
            <area shape="rect" coords="1,139,138,187" href="javascript:alert('Navigate to MICROSOFT');">
        </map>--%>
    </div>
        <br /><br />
    <div>
       <%-- <img src="images/5.png" usemap="#me" border="0">
        <map name="me">
            <area shape="poly" coords="125,65,124,61,123,63,122,62,119,63,123,69,122,68,120,62,123,61,125,60,131,64,131,69," href="javascript:alert('My Left Eye.');" />
            <area shape="poly" coords="149,62,152,60,150,60,148,58,148,63,146,65,146,62,146,61,146,58,159,61,158,62,158,60,156,67" href="javascript:alert('My Right Eye.');" />
            <area shape="rect" coords="201,225,220,241" href="javascript:alert('Fastrack Watch.');">
            <area shape="rect" coords="177,143,210,172" href="javascript:alert('Nike T-Shirt.');">
        </map>--%>
    </div>
        <br /><br />
        <h2>e-News Paper</h2>
    <div>
  
       <img src="images/enewspaper.png" usemap="#enewspaper" class="map" />
        <map name="enewspaper">
            <area shape="rect" coords="0,112,119,453" />
            <area shape="rect" coords="119,235,410,453" />
            <area shape="rect" coords="411,232,490,453" />
            <area shape="rect" coords="122,112,490,230" />
        </map>
    </div>
     <script src="https://unpkg.com/js-image-zoom@0.4.1/js-image-zoom.js" ></script>
    </form>
</body>
</html>
