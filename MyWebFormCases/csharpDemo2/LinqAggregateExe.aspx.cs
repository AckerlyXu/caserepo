using Microsoft.Win32;
using System;
using System.Collections.Generic;
using System.Data;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.csharpDemo2
{
    public partial class LinqAggregateExe : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable table = new DataTable();
            table.Columns.Add(new DataColumn("id", typeof(Int32)));
            table.Columns.Add(new DataColumn("Name", typeof(string)));
            table.Columns.Add(new DataColumn("Phone", typeof(string)));
            table.Columns.Add(new DataColumn("Address", typeof(string)));
            table.Rows.Add(1001, "AAA", "1234", "XXX");
            table.Rows.Add(DBNull.Value, "BBB", "1234", DBNull.Value);
            table.Rows.Add(1003, "CCC", "1234", DBNull.Value);
            table.Rows.Add(1004, DBNull.Value, "1234", "XXX");
            
            double percentId = (double)table.AsEnumerable().Where(r =>  r["id"] != DBNull.Value).Count() / table.Rows.Count;

            double percentName = (double)table.AsEnumerable().Where(r => r["Name"] !=DBNull.Value).Count() / table.Rows.Count;
            double percentPhone = (double)table.AsEnumerable().Where(r => r["Phone"] != DBNull.Value).Count() / table.Rows.Count;
            double percentAddress = (double)table.AsEnumerable().Where(r => r["Address"] != DBNull.Value).Count() / table.Rows.Count;


            //Response.Write("total:" + table.Rows.Count + "<br/>");
            //Response.Write("id:" + string.Format("{0:0%}", percentId )+"<br/>");
            //Response.Write("name:" + string.Format("{0:0%}", percentName ) + "<br/>");
            //Response.Write("phone:" + string.Format("{0:0%}", percentPhone ) + "<br/>");
            //Response.Write("address:" + string.Format("{0:0%}", percentAddress ) + "<br/>");
            Response.Write(MyExtend(table));

           
           



        }
        public static string[] GetLogSources(string logName)
        {
            if (logName == null || logName.Length == 0)
            {
                return new string[0];
            }

            RegistryKey localMachineKey = null;
            RegistryKey logKey = null;
            string[] sources = null;

            try
            {
                // The detail information about a log can be found at the registry.
                // And the registry key for a log is:
                // HKEY_LOCAL_MACHINE/SYSTEM/CurrentControlSet/Services/Eventlog/
                //
                string path = string.Concat(@"HKEY_LOCAL_MACHINE/SYSTEM/CurrentControlSet/Services/Eventlog/", logName);

                localMachineKey = Registry.LocalMachine;
                logKey = localMachineKey.OpenSubKey(path);
                if (logKey != null)
                {
                    sources = logKey.GetValue("Sources") as string[];
                }
            }
            finally
            {
                if (logKey != null)
                {
                    logKey.Close();
                }

                if (localMachineKey != null)
                {
                    localMachineKey.Close();
                }
            }

            return (sources == null) ? new string[0] : sources;
        }

        private string MyExtend(DataTable table)
        {
            string str = "";
            str += "total:"+table.Rows.Count+"<br/>";
        
            foreach (DataColumn item in table.Columns)
            {
                string name = item.ColumnName;
                double percent = (double)table.AsEnumerable().Where(r => r[item] != DBNull.Value).Count() / table.Rows.Count;
                str += name + ":" + string.Format("{0:0%}",percent) + "<br/>";
            }
            return str;
        }
    }
}