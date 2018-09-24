using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

namespace MyWebFormCases.xml
{
    public partial class GetElementInXml : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            XmlDocument xmlDocument = new XmlDocument();
            //write your own path of the xml file
           xmlDocument.Load(Server.MapPath("/xml/limsaaaml.xml"));
        XmlNodeList list=    xmlDocument.GetElementsByTagName("field");

            foreach (XmlNode item in list)
            {
                if(item.Attributes["id"].Value== "ID_NUMERIC")
                {
                    Response.Write(item.InnerText);
                }
            }
 
        }
    }
}