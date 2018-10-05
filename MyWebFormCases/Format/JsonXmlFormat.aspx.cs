using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

namespace MyWebFormCases.Format
{
    public partial class JsonXmlFormat : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            System.Web.Script.Serialization.JavaScriptSerializer javaScriptSerializer = new System.Web.Script.Serialization.JavaScriptSerializer();
            try
            {
                javaScriptSerializer.DeserializeObject(File.ReadAllText(Server.MapPath("/Format/json.json")));
            }
            catch (Exception ex)
            {

                Response.Write(ex.ToString());
            }

            try
            {
                XmlDocument document = new XmlDocument();
                document.Load(Server.MapPath("/Format/XMLFile1.xml"));
            }
            catch (Exception ex)
            {

                Response.Write(ex);
            }
           
        }
    }
}