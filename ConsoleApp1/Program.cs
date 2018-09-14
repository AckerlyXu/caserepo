using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml;

namespace ConsoleApp1
{
    class Program
    {
        static void Main(string[] args)
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

      

    }
   
    

}
