using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

namespace MyWebFormCases.xml
{
    public partial class RenameXml : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            XmlDocument file = new XmlDocument();
            
            file.Load(Server.MapPath("/xml/ORDERS_0000000030_9001234567891.xml"));
        
            XmlNode xmlNode = file.SelectSingleNode("//SEEDELFOR/CNT/GRP/IDENTIFIER_BY");//get the node IDENTIFIER_BY

            FileInfo info = new FileInfo(Server.MapPath("/xml/ORDERS_0000000030_9001234567891.xml"));
            info.MoveTo(Server.MapPath("/xml/ORDERS_0000000030_9001234567891_" + xmlNode.InnerText + ".xml")); //rename the original file with the innerText of IDENTIFIER_BY

        }
    }
}