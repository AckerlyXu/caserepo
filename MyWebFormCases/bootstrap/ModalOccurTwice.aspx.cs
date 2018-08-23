using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.bootstrap
{
    public partial class ModalOccurTwice : System.Web.UI.Page
    {

        
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void UpdateJobStatus_Click(object sender, EventArgs e)
        {
           
            Button CB = (Button)sender;
            int _Result = -1;
            switch (_Result)
            {
                case 0:
                    Lab_Popup_AlertHeading_Danger.Visible = false;
                    Lab_Popup_AlertHeading_Warning.Visible = false;
                    Lab_Popup_AlertHeading_Success.Visible = true;
                    Lab_Popup_AlertMessage.Text = "Job status has been updated!";

                    break;

                case -1:
                    // Failure, Status Not Updated Because Job Hasnt Been Started Yet!
                    Lab_Popup_AlertHeading_Warning.Visible = true;
                    Lab_Popup_AlertHeading_Danger.Visible = false;
                    Lab_Popup_AlertHeading_Success.Visible = false;
                    Lab_Popup_AlertMessage.Text = "You must start a job before you can update status!";
                    break;
            }
            MDL_Popup_AlertStatus.Show();
            MDL_Popup_AlertStatus.Show();
            //RefreshJobInfoData();
        }
    }
}