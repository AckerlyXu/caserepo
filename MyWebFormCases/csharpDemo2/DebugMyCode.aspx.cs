using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.csharpDemo2
{
    public partial class DebugMyCode : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<MyModel> list = new List<MyModel>();
            MyModel model = new MyModel() { ValorIR = 5.7 };
            list.Add(model);
          Response.Write(  myMethod(list));

        }

        private decimal myMethod(List<MyModel> list)
        {
             decimal summation;
            if (decimal.TryParse(list[0].ValorIR.ToString(), out summation)) {

                return summation;
            }
            else
            {
                throw new Exception("error occurs when parsing the string to decimal");
            }

        }
        public class MyModel
        {
            public double ValorIR  { get; set; }
        }
    }
}