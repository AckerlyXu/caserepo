using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.Xml.Linq;

namespace MyWebFormCases.FileDemo
{
    public partial class XmlToLinqExe : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Clear();
           // string table = "<!DOCTYPE html><html><head><meta charset= \"utf-8\" /><title></title></head><body><h1><span id = \"UserInfo\"></span><span class=\"mw-headline\" id=\"User Info\">Information</span></h1><table><tbody>";
            XmlDocument file = new XmlDocument();

            file.Load(Server.MapPath("/FileDemo/table.html"));
            XmlNode node= file.GetElementsByTagName("tbody")[0];
            
            //loop through all the tr elements
            foreach ( XmlNode tr in node.ChildNodes)
            {
                //remove the last three columns
                //because every time one element is removed,length of ChildNodes will be reduced by one, so 
                //the index is always 2 instead 2,3,4
                tr.RemoveChild(tr.ChildNodes[2]);

                tr.RemoveChild(tr.ChildNodes[2]);
                tr.RemoveChild(tr.ChildNodes[2]);
              
            }
           
             Response.Write(file.InnerXml);
            ;
            Response.End();
       
        }
    }
}