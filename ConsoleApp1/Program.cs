using System;
using System.Collections.Generic;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;
using System.Xml;
using WebFormBll;

namespace ConsoleApp1
{
    class Program
    {
        static void Main(string[] args)
        {
            string pwd1 = "MAKV2SPBNI99212";
            // Create a byte array to hold the random value. 
            byte[] salt1 = new byte[8];
            using (RNGCryptoServiceProvider rngCsp = new
RNGCryptoServiceProvider())
            {
                // Fill the array with a random value.
                rngCsp.GetBytes(salt1);
            }

            //data1 can be a string or contents of a file.
            string data1 = "Some test data";
            //The default iteration count is 1000 so the two methods use the 
           
            int myIterations = 1000;
            try
            {
                Rfc2898DeriveBytes k1 = new Rfc2898DeriveBytes(pwd1, salt1);
                Rfc2898DeriveBytes k2 = new Rfc2898DeriveBytes(pwd1, salt1);
                // Encrypt the data.
                Aes encAlg = Aes.Create();
                encAlg.Key = k1.GetBytes(16);
                MemoryStream encryptionStream = new MemoryStream();
                CryptoStream encrypt = new CryptoStream(encryptionStream,
encAlg.CreateEncryptor(), CryptoStreamMode.Write);
                byte[] utfD1 = new System.Text.UTF8Encoding(false).GetBytes(
data1);

                encrypt.Write(utfD1, 0, utfD1.Length);
                encrypt.FlushFinalBlock();
                encrypt.Close();
                byte[] edata1 = encryptionStream.ToArray();
                k1.Reset();

                // Try to decrypt, thus showing it can be round-tripped.
                Aes decAlg = Aes.Create();
                decAlg.Key = k2.GetBytes(16);
                decAlg.IV = encAlg.IV;
                MemoryStream decryptionStreamBacking = new MemoryStream();
                CryptoStream decrypt = new CryptoStream(
decryptionStreamBacking, decAlg.CreateDecryptor(), CryptoStreamMode.Write);
                decrypt.Write(edata1, 0, edata1.Length);
                decrypt.Flush();
                decrypt.Close();
                k2.Reset();
                string data2 = new UTF8Encoding(false).GetString(
decryptionStreamBacking.ToArray());

                if (!data1.Equals(data2))
                {
                    Console.WriteLine(data2);
                    Console.WriteLine("Error: The two values are not equal.");
                }
                else
                {
                    Console.WriteLine(data2);
                    Console.WriteLine("The two values are equal.");
                    Console.WriteLine("k1 iterations: {0}", k1.IterationCount);
                    Console.WriteLine("k2 iterations: {0}", k2.IterationCount);
                }
            }
            catch (Exception e)
            {
                Console.WriteLine("Error: ", e);
            }

           
            Console.ReadKey();




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
