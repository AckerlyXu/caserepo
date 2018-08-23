using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebFormCases.ajaxUpdatePanel
{
    public partial class ajaxWebForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Adiciona_Click(object sender, EventArgs e)
        {
            foreach (GridViewRow row in GridView2.Rows)
            {
                CheckBox chkbox = (CheckBox)row.FindControl("CheckBox2");
                if (chkbox.Checked == true)
                {
                   // SqlDataSource1.InsertParameters.Clear();
                    SqlDataSource1.InsertCommand = "insert into contacts (name,supplier_sid) values (@name,@sid)";
                    //   SqlDataSource1.InsertParameters.Add(new Parameter("@sid", System.Data.DbType.Int32) { DefaultValue = row.Cells[1].Text });
                    //SqlDataSource1.InsertParameters.Add(new Parameter("@name", System.Data.DbType.String) { DefaultValue = "Professor de teste" });
                 
                    SqlDataSource1.InsertParameters["sid"].DefaultValue = row.Cells[1].Text;
                    SqlDataSource1.InsertParameters["name"].DefaultValue = "Professor de teste";

                    //SqlDataSource1.InsertParameters.Add("@sid", row.Cells[1].Text);



                    SqlDataSource1.Insert();
                }
            }

            SqlDataSource2.DataBind();
            GridView1.DataBind();
            //ModalPopupExtender2.Hide();



        }
    }
}