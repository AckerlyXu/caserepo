using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.ListViewDemo
{
    public partial class listviewDataPagerPostback : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
            if (!string.IsNullOrEmpty(TextBox1.Text))
            {
                SqlDataSource1.SelectParameters.Clear();
                SqlDataSource1.SelectParameters.Add("ContactName2", TextBox1.Text.Trim());
                SqlDataSource1.DataBind();
                ListView1.DataBind();
                DataPager1.DataBind();
            }
            else
            {
                SqlDataSource1.SelectParameters.Clear();
                
                SqlDataSource1.SelectParameters.Add("ContactName2", " ");
                SqlDataSource1.DataBind();
                ListView1.DataBind();
                DataPager1.DataBind();

            }
            
         
        }
    }
}