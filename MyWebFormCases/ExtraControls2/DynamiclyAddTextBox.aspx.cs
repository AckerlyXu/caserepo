using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.ExtraControls2
{
    public partial class DynamiclyAddTextBox : System.Web.UI.Page
    {
        protected void Page_PreInit(object sender, EventArgs e)
        {
            List<string> keys = Request.Form.AllKeys.Where(key => key.Contains("txtDynamic")).ToList();

            int count = (keys.Count() - 1) / 2;
            for (int j = 1; j <= count; j++)
            {
                this.CreateTextBox("txtDynamic" + j);
            }
           
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            int index = pn1TextBoxes.Controls.OfType<TextBox>().ToList().Count/2 + 1;
            this.CreateTextBox("txtDynamic" + index);

        }
        private void CreateTextBox(string id)
        {
            for (int i = 1; i <= 2; i++)
            {
                TextBox txt = new TextBox();
                txt.ID = id + i.ToString();
                txt.TextMode = TextBoxMode.MultiLine;
                txt.Height = 60;
                txt.Width = 300;
                pn1TextBoxes.Controls.Add(txt);
            }
            Literal lt = new Literal();
            lt.Text = "<br/>";
            pn1TextBoxes.Controls.Add(lt);
        }
    }
}