using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Management;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.csharpDemo2
{
    public partial class WindowManagement : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ArrayList hardDriveDetails = new ArrayList();
            ManagementObjectSearcher moSearch = new ManagementObjectSearcher("SELECT * FROM Win32_DiskDriv ");
            foreach (ManagementObject wmi_HD in moSearch.Get())
            {
                HardDrive hd = new HardDrive();  // User Defined Class
                hd.Model = wmi_HD["Model"].ToString();  //Model Number
                hd.Type = wmi_HD["InterfaceType"].ToString();  //Interface Type
                hd.SerialNo = wmi_HD["SerialNumber"].ToString(); 
               hardDriveDetails.Add(hd);
                Label1.Text = "Model : " + hd.Model;
                Label1.Text = " Type : " + hd.Type;
                Label1.Text = " Serial Number : " + hd.SerialNo;
            }
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
    }
}