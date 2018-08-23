using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Script.Serialization;
namespace MyWebFormCases.json
{
    public partial class ConvertFlatObjectToNestedJson : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            JavaScriptSerializer javaScriptSerializer = new JavaScriptSerializer();
            Node node = new Node() { NodeId = 12, City = "XYZ" };
           string str= javaScriptSerializer.Serialize(new { node.NodeId, Address = new { node.City } });
            Response.Write(str);

        }


       
    }
    public class Node
    {
        public int NodeId { get; set; }
        public string  City { get; set; }
    }
}