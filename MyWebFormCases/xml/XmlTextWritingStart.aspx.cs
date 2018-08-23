using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

namespace MyWebFormCases.xml
{
    public partial class XmlTextWritingStart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
            XmlTextWriter writer = new XmlTextWriter(Server.MapPath("/xml/title.xml"), Encoding.UTF8);
            writer.WriteStartDocument();
            writer.Formatting = Formatting.Indented;
            writer.WriteStartElement("url");
            writer.WriteAttributeString("xmlns", "xhtml", null, "http://www.w3.org/1999/xhtml");
            writer.WriteElementString("loc", "http//www.mywebsite.com/en/");

            string[] arr = new string[] { "en", "it", "fr", "es" };
            foreach (var item in arr)
            {
                writer.WriteRaw("\n<xhtml:link rel=\"alternate\" hreflang=\""+item+"\"  href=\"http://www.mywebsite.com/"+item+"/\" />");
              
            }
            writer.WriteRaw("\n");
        
            writer.WriteEndElement();

            writer.Close();

        }
    }
}