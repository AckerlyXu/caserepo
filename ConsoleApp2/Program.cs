using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;
using iTextSharp.text.pdf.parser;
    using iTextSharp.text.pdf;
using System.Text.RegularExpressions;
using Aspose.Words;

namespace ConsoleApp2
{
    class Program
    {
        static void Main(string[] args)
        {
           string[] filePathes = Directory.GetFiles(@"C:\Users\ackerlyx\Desktop\", "*.pdf");//get all the .pdf file in the directory
            string str = "";
            foreach (string path in filePathes)//get all the content
            {
               str += ReadPdfContent(path);  
            }
            string target = "";
           MatchCollection col = Regex.Matches(str, @"\d+"); //use regular expresssion to get all the numbers
            foreach (Match item in col)
            {
                target += item.Value;  //connect all the numbers
            }
            Document doc = new Document();  //write the cotent to a doc
            DocumentBuilder builder = new DocumentBuilder(doc);
            builder.Write(target);
            doc.Save(@"C:\Users\ackerlyx\Desktop\test.doc");
       
            
       
            Console.Read();
           
        }
        public static string ReadPdfContent(string filepath)
        {
            try
            {
                string pdffilename = filepath;
                PdfReader pdfReader = new PdfReader(pdffilename);
                int numberOfPages = pdfReader.NumberOfPages;
                StringBuilder text = new StringBuilder();
                for (int i = 1; i <= numberOfPages; ++i)
                {
                    text.Append(iTextSharp.text.pdf.parser.PdfTextExtractor.GetTextFromPage(pdfReader, i));
                }
                pdfReader.Close();
                return text.ToString();
            }
            catch (Exception ex)
            {
                return "cause：" + ex.ToString();
            }
        }
    }
}
