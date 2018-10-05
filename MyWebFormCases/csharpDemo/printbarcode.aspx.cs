using Neodynamic.SDK.Printing;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.csharpDemo
{
    public partial class printbarcode : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {//Define a ThermalLabel object and set unit to inch and label size
         //Define a ThermalLabel object and set unit to inch and label size
            ThermalLabel tLabel = new ThermalLabel(Neodynamic.SDK.Printing.UnitType.Inch, 4, 3);
            tLabel.GapLength = 0.2;

            //Define a TextItem object
            TextItem txtItem = new TextItem(0.2, 0.2, 1, 0.5, "Thermal Label Test");

            //Define a BarcodeItem object
            BarcodeItem bcItem = new BarcodeItem(0.2, 1, 2, 1, BarcodeSymbology.Code128, "12345788888888");
            //Set bars height to .75inch
            bcItem.BarHeight = 0.75;
            //Set bars width to 0.0104inch
            bcItem.BarWidth = 0.0104;

            //Add items to ThermalLabel object...
            tLabel.Items.Add(txtItem);
            tLabel.Items.Add(bcItem);

            //Create a PrintJob object
            using (PrintJob pj = new PrintJob())
            {
                //Save output to PDF...
                pj.ExportToPdf(tLabel, @"d:\develop\myLabel.pdf", 300);
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            //Define a ThermalLabel object and set unit to inch and label size
            ThermalLabel tLabel = new ThermalLabel(Neodynamic.SDK.Printing.UnitType.Inch, 1, 0.5);
            tLabel.GapLength =0.2;
          
           

            //Define a BarcodeItem object
          
            BarcodeItem bcItem = new BarcodeItem(0.2,0.2, 0.4, 0.6, BarcodeSymbology.Code128, TextBox1.Text);
            //Set bars height to .75inch
            //bcItem.BarHeight = 0.04;
            //Set bars width to 0.0104inch
            //bcItem.BarWidth = 0.06;
            bcItem.Tag = "";
           
            //Create a PrintJob object

            //Create a PrintJob object
            using (PrintJob pj = new PrintJob())
            {
                tLabel.Items.Add(bcItem);
               
                //Save output to image...
                pj.ExportToImage(tLabel, Server.MapPath("/myLabel.jpeg"), new ImageSettings(ImageFormat.Jpeg),1000);
            }
            Image image = new Image();
            image.ImageUrl = "/myLabel.jpeg";
            this.Page.Form.Controls.Add(image);
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            //ThermalLabel tLabel = new ThermalLabel(Neodynamic.SDK.Printing.UnitType.Inch, 4, 3);
            //tLabel.GapLength = 0.2;

            ////Define a BarcodeItem object for encoding Code 39 symbology
            //BarcodeItem bc1 = new BarcodeItem(0.2, 0.2, 2, 1, BarcodeSymbology.Code39, "ABC123");
            //bc1.AddChecksum = false;
            //bc1.CodeAlignment = BarcodeTextAlignment.BelowJustify;
            //bc1.BarWidth = 0.01;
            //bc1.BarHeight = 0.5;
            //bc1.QuietZone = new FrameThickness(0);
            //bc1.BarcodeAlignment = BarcodeAlignment.MiddleCenter;
            //bc1.BorderThickness = new FrameThickness(0.03);

            ////A second Code 39 barcode with sizing = Fill
            //BarcodeItem bc2 = bc1.Clone() as BarcodeItem;
            //bc2.Y = 1.5;
            //bc2.BarcodePadding = new FrameThickness(0.1);
            //bc2.Sizing = BarcodeSizing.Fill;

            ////Add items to ThermalLabel object...
            //tLabel.Items.Add(bc1);
            //tLabel.Items.Add(bc2);

            ////Create a WindowsPrintJob object

            //WebPrintJob pj = new WebPrintJob();
           
            //    //Create PrinterSettings object
            //    PrinterSettings myPrinter = new PrinterSettings();
            //    myPrinter.Communication.CommunicationType = CommunicationType.USB;
            //    myPrinter.Dpi = 203;
            //    myPrinter.ProgrammingLanguage = ProgrammingLanguage.ZPL;
            //    myPrinter.PrinterName = "Zebra  TLP2844-Z";
          
            //    ////Set PrinterSettings to WindowsPrintJob
            //    pj.PrinterSettings = myPrinter;
            //////Print ThermalLabel object...
            ThermalLabel tLabel = new ThermalLabel(Neodynamic.SDK.Printing.UnitType.Inch, 4, 3);
            tLabel.GapLength = 0.2;

            //Define a TextItem object
            TextItem txtItem = new TextItem(0.2, 0.2, 1, 0.5, "Thermal Label Test");

            //Define a BarcodeItem object
            BarcodeItem bcItem = new BarcodeItem(0.2, 1, 2, 1, BarcodeSymbology.Code128,TextBox1.Text);
            //Set bars height to .75inch
            bcItem.BarHeight = 0.75;
            //Set bars width to 0.0104inch
            bcItem.BarWidth = 0.0104;

            //Add items to ThermalLabel object...
            //tLabel.Items.Add(txtItem);
            tLabel.Items.Add(bcItem);

            //Create a PrintJob object
            //using (WindowsPrintJob pj = new WindowsPrintJob())
            //{
            //    //Create PrinterSettings object
            //    PrinterSettings myPrinter = new PrinterSettings();
            //    myPrinter.Communication.CommunicationType = CommunicationType.USB;
            //    myPrinter.Dpi = 203;
            //    myPrinter.ProgrammingLanguage = ProgrammingLanguage.ZPL;
            //    myPrinter.PrinterName = "Zebra  TLP2844-Z";

            //    //Set PrinterSettings to WindowsPrintJob
            //    pj.PrinterSettings = myPrinter;
            //    //Print ThermalLabel object...
            //    pj.Print(tLabel);
            //}
            using (PrintJob pj = new PrintJob())
            {
                //Set number of copies
                pj.Copies = 5;
                //Save output to PDF...
                pj.ExportToPdf(tLabel, @"d:\develop\myLabels.pdf", 300);
            }

        }
    }
}