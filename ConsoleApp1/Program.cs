using System;
using System.Collections;
using System.Collections.Generic;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Management;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;
using System.Xml;
using WebFormBll;

namespace ConsoleApp1
{
    class Program
    {
        static void MainA(string[] args)
        {
            

            //ArrayList hardDriveDetails = new ArrayList();
            //ManagementObjectSearcher moSearch = new ManagementObjectSearcher("SELECT * FROM Win32_DiskDriv ");
            //foreach (ManagementObject wmi_HD in  moSearch.Get())
            //{
            //    HardDrive hd = new HardDrive();  // User Defined Class
            //    hd.Model = wmi_HD["Model"].ToString();  //Model Number
            //    hd.Type = wmi_HD["InterfaceType"].ToString();  //Interface Type
            //    hd.SerialNo = wmi_HD["SerialNumber"].ToString();
            //    hardDriveDetails.Add(hd);
            //   Console.WriteLine(  "Model : " + hd.Model);
            //Console.WriteLine(" Type : " + hd.Type);
            //Console.WriteLine(" Serial Number : " + hd.SerialNo);

            //}

         
            var hDid = string.Empty;
            var mc = new ManagementClass("Win32_LogicalDisk");
            var moc = mc.GetInstances();
            foreach (var o in moc)
            {
                var mo = (ManagementObject)o;
               
                hDid += (string)mo.Properties["VolumeSerialNumber"].Value+"|";
               
               // break;
            }
            Console.WriteLine(hDid);
            Console.ReadKey();

        }
        class HardDrive
        {
            private string model = null;
            private string type = null;
            private string serialNo = null;
            public string Model
            {
                get { return model; }
                set { model = value; }
            }
            public string Type
            {
                get { return type; }
                set { type = value; }
            }
            public string SerialNo
            {
                get { return serialNo; }
                set { serialNo = value; }
            }
        }
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

      static void Main2(string[] args)
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
