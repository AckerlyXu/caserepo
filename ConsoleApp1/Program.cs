using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml;

namespace ConsoleApp1
{
    class Program
    {
        static void Main1(string[] args)
        {
            XmlDocument modelPMC = new XmlDocument();
            modelPMC.LoadXml(@"<root>
                                <ParentN><Price>12</Price><Qty>50</Qty></ParentN>
                                <ParentN><Price>18</Price><Qty>40</Qty></ParentN>
                                <ParentN><Price>20</Price><Qty>70</Qty></ParentN>
</root>");

            XmlNodeList xmlNodeList = modelPMC.SelectNodes("//ParentN");

            foreach (XmlNode parentN in xmlNodeList)
            {
                Console.Write("price:" + parentN["Price"].InnerText + "   ");
                Console.WriteLine("qty:" + parentN["Qty"].InnerText );
            }
            Console.ReadKey();
        }

      static void Main(string[] args)
        {
           
           //DateTime.TryParseExact
            DateTime outputDateTime;
          
            if (DateTime.TryParseExact("09/04/1999", "dd/MM/yyyy", CultureInfo.InvariantCulture, DateTimeStyles.None, out outputDateTime)) {
                Console.WriteLine("using DateTime.TryParseExact:"+"Month:" + outputDateTime.Month + " day:" + outputDateTime.Day);
            }
            else
            {
                Console.WriteLine("your string of data is not in a right format");
            }


            // convert.ToDateTime
            DateTime time = Convert.ToDateTime("09/04/1999");
            Console.WriteLine("using convert.ToDateTime:" + "Month:" + time.Month + " day:" + time.Day);


            //DateTime.ParseExact
            DateTime parseExact = DateTime.ParseExact("09/04/1999", "dd/MM/yyyy", CultureInfo.InvariantCulture);
            Console.WriteLine("DateTime.ParseExact:" + "Month:" + parseExact.Month + " day:" + parseExact.Day);


            Console.ReadKey();
        }

    }
   
    

}
