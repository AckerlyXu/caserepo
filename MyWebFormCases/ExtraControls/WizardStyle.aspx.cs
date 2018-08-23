using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace MyWebFormCases.ExtraControls
{
    public partial class WizardStyle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Wizard1_ActiveStepChanged(object sender, EventArgs e)

        {
            //get the listview in the wizard
            System.Web.UI.WebControls.ListView list = (Wizard1.FindControl("sideBarList") as System.Web.UI.WebControls.ListView);
            //get the ul in the listview and change its cssclass according to the activestepindex of wizard
            HtmlGenericControl ul = list.FindControl("ul") as HtmlGenericControl;
            if (Wizard1.ActiveStepIndex == 0)
            {

                ul.Attributes.Add("class", "sidebar1");
                Wizard wizard = Wizard1;
         
                //get the wizardstep
            WizardStep wizardStep1 =    Wizard1.FindControl("WizardStep1") as WizardStep;
                //get the div control in the wizardstep and change its class
                HtmlGenericControl step1 = wizardStep1.FindControl("step1") as HtmlGenericControl;
                step1.Attributes.Add("class", "step1 ");
              
            }
            else
            {
                ul.Attributes.Add("class", "sidebar2");
                WizardStep wizardStep2 = Wizard1.FindControl("WizardStep2") as WizardStep;
                HtmlGenericControl step2 = wizardStep2.FindControl("step2") as HtmlGenericControl;
                step2.Attributes.Add("class", "step2");


               
            }

           

        }
    }
}