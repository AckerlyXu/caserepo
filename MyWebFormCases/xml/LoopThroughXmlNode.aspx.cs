using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

namespace MyWebFormCases.xml
{
    public partial class LoopThroughXmlNode : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            XmlDocument modelPMC = new XmlDocument();
            modelPMC.LoadXml(@"<root>
                                <ParentN><Price>12</Price><Qty>50</Qty></ParentN>
                                <ParentN><Price>18</Price><Qty>40</Qty></ParentN>
                                <ParentN><Price>20</Price><Qty>70</Qty></ParentN>
</root>");

            XmlNodeList xmlNodeList = modelPMC.SelectNodes("//ParentN");

            foreach (XmlNode parentN in xmlNodeList)
            {
                Response.Write("price:" + parentN["Price"].InnerText+"   ");
                Response.Write("qty:" + parentN["Qty"].InnerText+"<br/>");
            }

        }
    }
}