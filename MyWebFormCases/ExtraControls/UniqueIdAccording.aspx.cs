using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.ExtraControls
{
    public partial class UniqueIdAccording : System.Web.UI.Page
    {
     public   List<Model> list2;
        protected void Page_Load(object sender, EventArgs e)
        {

          
          list2 = new List<Model> { new Model { Id = 1, Name = "myName1", Address = "myAddress1" },
                new Model { Id = 2, Name = "myName2", Address = "myAddress2" },
                new Model { Id = 3, Name = "myName3", Address = "myAddress3" },
                new Model { Id = 4, Name = "myName4", Address = "myAddress4" },
                new Model { Id = 5, Name = "myName5", Address = "myAddress5" },
            new Model{Id=6,Name="myName6",Address="myAddress6"} };

           
        }

        public class Model
        {
            public int Id { get; set; }
            public string Name { get; set; }

            public string  Address { get; set; }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
          
        }
    }
}