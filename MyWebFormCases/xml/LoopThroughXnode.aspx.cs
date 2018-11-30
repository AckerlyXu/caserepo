using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

namespace MyWebFormCases.xml
{
    public partial class LoopThroughXnode : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            XmlDocument file = new XmlDocument();
            file.Load(Server.MapPath("/xml/folder.xml"));
           
            XmlNodeList xmlNodeList = file.SelectNodes("//Folder");

            foreach (XmlNode child in xmlNodeList)
            {
                Response.Write("path:" + child["path"].InnerText + "  <br/> ");
                Response.Write("name:" + child["name"].InnerText+"<br/>");
            }
        
        }
    }
}