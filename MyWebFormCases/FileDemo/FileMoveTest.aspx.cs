using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.FileDemo
{
    public partial class FileMoveTest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ProcessFile(Server.MapPath("/")+"myText.txt");
        }

        #region start
        private static void ProcessFile(string FullPathFile)
        {
            try
            {

                bool Move = true;

                string[] StringLine = System.IO.File.ReadAllLines(FullPathFile);
                

                for (int line = 0; line < StringLine.Length; line++)
                {
                    string DateScheduling = "";
                    string DocumentValue = "";
                    string Protocol = "";
                    string Record = "";
                    string Emission = "";
                    string CodBarra = "";


                    if (StringLine[line].Contains("Bar Cod:"))
                    {
                        CodBarra += StringLine[line].Replace("Cod. Bars:", "");
                        line += 2;
                    }
                    if (CodBarra != "")
                    {
                        CodBarra += StringLine[line];
                        CodBarra = CodBarra.Replace("", "");
                    }




                    

                



                    if (StringLine[line].Contains("Delay:"))
                    {
                        DateScheduling += StringLine[line].Replace("DateScheduling :", "").Replace("", "");
                    }



               



                    if (StringLine[line].Contains("Vlr.Documento:"))
                    {
                        DocumentValue += StringLine[line].Replace("Document.Value :", "").Replace("", "");
                    }



    


                    if (StringLine[line].Contains("Protocol:"))
                    {
                        Protocol += StringLine[line].Replace("Protocol:", "").Replace("", "");
                    }







                    if (StringLine[line].Contains("Record:"))
                    {
                        Record += StringLine[line].Replace("Record:", "");
                    }

                    

               

                 

                    if (StringLine[line].Contains("Emission:"))
                    {
                        Emission += StringLine[line].Replace("Emission:", "");
                    }



                    // Search Bar Code
                    // string CodProcInter = GetCodProcInter(CodBar);

                    // string name_interested = Getname_interested (CodeBar);

                    //if (!string.IsNullOrEmpty(CodProcInter))
                    //{
                    //    //if (!CodeBarInserted(CodeBar))
                    //    {
                    //        // Insert Bar Code
                    //     //   bool inserted = BankInfo(CodProcInter, CodeBar, DateScheduling, DocumentValue, Protocol, Register, Emission);
                    //    }
                    //    else
                    //    {
                    //        // Bar Code Already Inserted
                    //        InsertLog("\ n Already Exists ->" + CodeBar);

                    //    }
                    //}

                    InsertLog("\n Already Exists ->" + CodBarra);
                    //else
                    //{
                    //    // Barcode not available in table -> sdpj_proc_inter
                    //    Move = false;
                    //    InsertLog("\ n The file was not imported because the Bar Code ->" + CodeBarra + "is not available in the interested process table");




                    //}

                 
                        CodBarra = "";
                    //  }

                    //    if
                    //    {
                    //   
                    //}

                    MoveFile(FullPathFile);

                }
            }
            catch (Exception) // line 2016
            {
                throw;
            }
}

        #endregion

        private static string LogFileLog = @"D:\develop\vsworkspace\WebFormCases\MyWebFormCases";
        private static void InsertLog(string row)
        {
            // Create Log Folder, if it does not exist
            if (!Directory.Exists(LogFileLog))
            {
                Directory.CreateDirectory(LogFileLog);
            }

            // Create Log File, if it does not exist
            string FullPath = LogFileLog + "\\log.txt";
            if (!File.Exists(FullPath))
            {
                using (File.Create(FullPath))
                {

                }
               
            }

            // Write to LOG file
            using (StreamWriter file = new StreamWriter(FullPath, true))
            {
                file.WriteLine(row);
                file.Dispose();
            }
        }


        private static void MoveFile(string FileName)
        {

            string rootFolderPath = "D:\\develop\\vsworkspace\\WebFormCases\\MyWebFormCases\\NewFolder1\\";
            string destinationPath = "D:\\develop\\vsworkspace\\WebFormCases\\MyWebFormCases\\NewFolder2\\";
            string[] fileList = System.IO.Directory.GetFiles(rootFolderPath);
            foreach (string file in fileList)
            {
                string fileToMove = rootFolderPath + Path.GetFileName(file);
                string moveTo = destinationPath +Path.GetFileName( file);
                // moving file
                File.Move(fileToMove, moveTo); // line 233
            }
        }

    }
}