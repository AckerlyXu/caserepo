using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebFormCases.use_loop_code_in_a_page
{
    public partial class loopForATable : System.Web.UI.Page
    {
       public  List<Computer> computers;
        protected void Page_Load(object sender, EventArgs e)
        {
           computers = new List<Computer>() {
                new Computer{ComputerName="ComputerName1",LastRunTime=DateTime.Now.AddDays(-5),LastTaskResult="good1"},
                 new Computer{ComputerName="ComputerName2",LastRunTime=DateTime.Now.AddDays(-4),LastTaskResult="good2"},
                  new Computer{ComputerName="ComputerName3",LastRunTime=DateTime.Now.AddDays(-3),LastTaskResult="good3"},
                   new Computer{ComputerName="ComputerName4",LastRunTime=DateTime.Now.AddDays(-2),LastTaskResult="good4"},
                    new Computer{ComputerName="ComputerName5",LastRunTime=DateTime.Now.AddDays(-1),LastTaskResult="good5"}


            };


        }
    }



    public class Computer
    {
        public string ComputerName { get; set; }
        public DateTime LastRunTime { get; set; }
        public string LastTaskResult { get; set; }
    }
}