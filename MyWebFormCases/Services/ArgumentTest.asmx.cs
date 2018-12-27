using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace MyWebFormCases.Services
{
    /// <summary>
    /// Summary description for ArgumentTest
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    [System.Web.Script.Services.ScriptService]
    public class ArgumentTest : System.Web.Services.WebService
    {

        [WebMethod(EnableSession =true)]
        public void selectMyTest()
        {
           

           
        }
        [WebMethod(EnableSession = true)]
        public string addUser(Student stu)
        {
            return "success";
        }

    }
    public class Student
    {
        public string Name { get; set; }
        public int Age { get; set; }
    }
}
