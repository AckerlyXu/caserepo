using MyWebFormCases.Models;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.DataBase
{
    public partial class LinqWithTwoTablesGroupBy : System.Web.UI.Page
    {
        UserItemDb db = new UserItemDb();
        protected void Page_Load(object sender, EventArgs e)
        {
            //join the two table
            var connect =
                          (from app in db.IAApplications
                          join r in db.Registers

                          on app.Creationdate equals r.SubmissionDate into arGroup

                          from item in arGroup.DefaultIfEmpty()
                          select new {
                            aid = app.id, rid =item==null?null:(int?)item.id, app.Creationdate })
                            .OrderBy(d=>d.Creationdate)
                            ;

          
               // group the joined table by datetime
               var result =from en in connect
                         group en by en.Creationdate into g
                         select g;

            // select the appliction count and register count of every group
            var data = (from re in result
                       select new {
                           Date = re.Key,
                           newApplication = re.Select(a => a.aid).Distinct().Count(),
                     
                           newRegisters = re.Where(r=>r.rid!=null).Select(r => r.rid).Distinct().Count() }).ToList();

            //// select all the submissionDate
            //var allCreationDate = db.Registers.Select(r => r.SubmissionDate);
            //// select applications which have no corresponding submissionDate
            //var appHasNoRe = db.IAApplications.Where(app => !allCreationDate.Contains(app.Creationdate));


            // add application which have no corresponding submissionDate
            //foreach (var item in appHasNoRe)
            //{
            //    data.Add(new { Date = item.Creationdate, newApplication = 1,newRegisters = 0 });
            //}

            GridView1.DataSource = data;
            GridView1.DataBind();
           

        }
    }
}