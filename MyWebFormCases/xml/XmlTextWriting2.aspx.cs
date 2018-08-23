using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

namespace MyWebFormCases.xml
{
    public partial class XmlTextWriting2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
       
           
        
            XmlTextWriter writer = new XmlTextWriter(Response.OutputStream, Encoding.UTF8);
            writer.WriteStartDocument();
            writer.Formatting = Formatting.Indented;
            writer.WriteStartElement("urlset", "http://www.sitemaps.org/schemas/sitemap/0.9");
            writer.WriteAttributeString("xmlns:xsi", "https://www.w3.org/2001/XMLSchema-instance");

           writer.WriteAttributeString("xmlns", "xhtml", null, "http://www.w3.org/1999/xhtml");

            string mydomain = "http:// www.mywebsite.com/";
            string[] langlist = new string[] { "en", "it", "fr", "es" };

            foreach (string lang2 in langlist)
            {
                writer.WriteStartElement("url");
                writer.WriteAttributeString("xmlns", "xhtml", null, "http://www.w3.org/1999/xhtml");
                writer.WriteElementString("loc", mydomain +lang2.ToLower());

                foreach (string lang in langlist)
                {
                    writer.WriteRaw("\n<xhtml:link rel=\"alternate\" hreflang=\"" + lang + "\"  href=\"" + mydomain + lang.ToLower() + "\" />");
                }
                writer.WriteRaw("\n<xhtml:link rel=\"alternate\" hreflang='x-default'  href=\"" + mydomain + "\" />");
                writer.WriteRaw("\n");
                writer.WriteEndElement();
            }
            writer.WriteStartElement("url");
            writer.WriteAttributeString("xmlns", "xhtml", null, "http://www.w3.org/1999/xhtml");
            writer.WriteElementString("loc", mydomain);

            foreach (string lang in langlist)
            {
                writer.WriteRaw("\n<xhtml:link rel=\"alternate\" hreflang=\"" + lang + "\"  href=\"" + mydomain + lang.ToLower() + "\" />");
            }
            writer.WriteRaw("\n");
            writer.WriteEndElement();
            
            writer.WriteEndDocument();
            writer.Close();
             Response.End();

            

        }
    }
}