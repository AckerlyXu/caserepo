using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.DataBase
{
    public partial class DealWithNull : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable table = new DataTable();
            table.Columns.Add("Location", typeof(string));
            table.Columns.Add("Amount", typeof(decimal));
           DataRow row= table.NewRow();
            row["Location"] = null;
            row["Amount"] = DBNull.Value;
            table.Rows.Add(row);
            row = table.NewRow();
            row["Location"] = "location";
            row["Amount"] = 123;
            table.Rows.Add(row);
            string m_Location;
            decimal m_Amount;
            for (int i = 0; i < table.Rows.Count; i++)
            {
               if(table.Rows[i]["Location"] == DBNull.Value)
                {
                    m_Location = "";
                
                }
                else
                {
                    m_Location = table.Rows[i]["Location"] as string;
                }
                if (table.Rows[i]["Amount"] == DBNull.Value)
                {
                    m_Amount = 0;
                }
                else
                {
                    m_Amount = Convert.ToDecimal(table.Rows[i]["Amount"].ToString());
                  
                }
              

            }
           

        }
    }
}