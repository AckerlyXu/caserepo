using MySql.Data.MySqlClient;
using MyWebFormCases.Utils;
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.DataBase
{
    public partial class MySqlTest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


       
          
        }

        public class Studnet
        {
            public int id { get; set; }
            public string name { get; set; }
            public int age { get; set; }
        }
    }
}