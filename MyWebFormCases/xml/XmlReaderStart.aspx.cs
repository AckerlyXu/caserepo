using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

namespace MyWebFormCases.xml
{
    public partial class XmlReaderStart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
                //声明StringReader传入Xml文本，作为XmlReader.Create的参数
                using (StringReader strRdr = new StringReader(@"<?xml version=""1.0"" encoding=""utf-8"" ?>
<root>
    <cat color=""white"">I'm a Cat</cat>
    <dog color=""yellow""/>
</root>"))
                {
              
                    using (XmlReader rdr = XmlReader.Create(strRdr))
                    {
                        //循环Read方法直到文档结束
                        while (rdr.Read())
                        {
                            Response.Write("rdr.NodeType = " + rdr.NodeType + "<br/>");
                            //如果是开始节点
                           
                            if (rdr.NodeType == XmlNodeType.Element)
                            {
                                //通过rdr.Name得到节点名
                                string elementName = rdr.Name;

                                Response.Write(elementName + " element start" + "<br/>");
                                if (elementName == "root")
                                {

                                }
                                //读取到cat元素 这时rdr.Read()读取到的内容为<cat color="white">
                                else if (elementName == "cat")
                                {
                                
                                    //可以通过中括号获得属性值
                                    string colorVal = rdr["color"];
                                    Response.Write("\tcat's color is " + colorVal+"<br/>");


                                    //读取到节点内文本内容
                                    if (rdr.Read())
                                    {
                                        //通过rdr.Value获得文本内容
                                        Response.Write("\t cat said:" + rdr.Value + "<br/>");
                                    }
                                }
                            }
                            else if (rdr.NodeType == XmlNodeType.EndElement)
                            {
                                //在节点结束时也可以通过rdr.Name获得节点名字
                                string elementName = rdr.Name;
                                Response.Write(elementName + " element end" + "<br/>");
                            }
                        }
                    }
                }

               
            }
       
   

}
}