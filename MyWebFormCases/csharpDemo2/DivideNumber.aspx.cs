using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.csharpDemo2
{
    public partial class DivideNumber : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Write(DivideRecords(1000)+";"+"result:"+GetResult(1000));
        }
        static double GetResult(int number)
        {
            double count = Math.Ceiling((number+1) * 1.0 / 300); //get how many 300 there are in the number
            return (count - 1) * 300 - 1; //get the final result according to  how many 300 there are in the number
        }
        static string DivideRecords(int number)
        {
            string result = "";
            double count = Math.Ceiling(number * 1.0 / 300);
            for (int i = 0; i < count-1; i++)
            {
                string temp = i * 300 + "-" + ((i + 1) * 300 - 1)+",";
                result += temp;
            }
            result += (count - 1) * 300 + "-" + (number-1);
            return result;
        }
    }
}