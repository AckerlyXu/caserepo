using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.javascript
{
    public partial class PassSingleOrDoubleQuotesTojs : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!IsPostBack)
            {
                string myData = "wor'ld";
              myData=  myData.Replace("'", "\\'");
                GridView1.DataSource = new List<Model> { new Model { Task_Code = "hello", Task_Name = myData} };
                GridView1.DataBind();
            }
        }

        public class Model
        {
            public string Task_Code { get; set; }
            public string  Task_Name { get; set; }
        }
    }
}