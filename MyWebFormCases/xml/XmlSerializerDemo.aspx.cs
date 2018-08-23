using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.Xml.Serialization;

namespace MyWebFormCases.xml
{
    public partial class XmlSerializerDemo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string path = Server.MapPath("/xml/mutiMailProperties.xml");

            //XmlSerializer xmlSerial = new XmlSerializer(typeof(MailProperties));
            //StreamReader sr = new StreamReader(path);
            //MailProperties entity = xmlSerial.Deserialize(sr) as MailProperties;
            XmlDocument xmlDocument = new XmlDocument();
            xmlDocument.Load(path);

            List<MailProperties> mailList = new List<MailProperties>();
            //get all mailProperties node
          XmlNodeList xmlNodeList=  xmlDocument.SelectNodes("/mails/mailProperties");
            // loop through the mailProperties node
            foreach (XmlNode item in xmlNodeList)
            {
               
                //get the  subject attribute of the node
              string  subject = item.Attributes["subject"].Value.ToString();
                MailProperties mailProperties = new MailProperties();
                mailProperties.Subject = subject;
                //get the child nodes of mailProperties node
                XmlNodeList list = item.ChildNodes;
                foreach (XmlNode node in list)
                {
                    //get the from node
                    if (node.Name == "from")
                    {
                        // get the content of the from node
                        mailProperties.From = node.InnerText;
                    }
                    //get the to node
                    if (node.Name=="to")
                    {
                        mailProperties.To = node.InnerText;
                    }
                }
                mailList.Add(mailProperties);
            }
            
        }
    }
}