using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.Xml.XPath;
using System.Xml.Xsl;

namespace MyWebFormCases.xml
{
    public partial class XstlStart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            //XsltSettings settings = new XsltSettings(true, true);
            //XPathDocument xPath = new XPathDocument(Server.MapPath("/xml/sampleDoc1.xml"));

            //XslCompiledTransform xslCompiledTransform = new XslCompiledTransform();

            //xslCompiledTransform.Load(Server.MapPath("/xml/xslt/Comparison.xslt"),settings,new XmlUrlResolver());
            //XmlTextWriter writer = new XmlTextWriter(Server.MapPath("result1.xml"),null);

            //xslCompiledTransform.Transform(xPath, null, writer);

            parse(Server.MapPath("/xml/xmlfile/message.xml"), Server.MapPath("/xml/xslt/message.xslt"), Server.MapPath("/xml/result.xml"));

        }

        public  void parse(string originXml,string xslt,string result)
        {
            XsltSettings settings = new XsltSettings(true, true);
     
            XPathDocument xPath = new XPathDocument(originXml);
        
            XslCompiledTransform xslCompiledTransform = new XslCompiledTransform();
          
            xslCompiledTransform.Load(xslt, settings, new XmlUrlResolver());
            XmlTextWriter writer = new XmlTextWriter(result,null);

            xslCompiledTransform.Transform(xPath,null, writer);
        }
    }
}