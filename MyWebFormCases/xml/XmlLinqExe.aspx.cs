using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.Xml.Linq;

namespace MyWebFormCases.xml
{
    public partial class XmlLinqExe : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        
           XDocument doc = XDocument.Load(Server.MapPath("/xml/xmlfile/response.xml"));
            //  Response.Write(doc.Descendants("FL").Where(fl => (string)fl.Attribute("val") == "Id").FirstOrDefault().Value);
            XmlDocument docc= new XmlDocument();
            docc.Load(Server.MapPath("/xml/customer.xml"));
           
        }
    }
}