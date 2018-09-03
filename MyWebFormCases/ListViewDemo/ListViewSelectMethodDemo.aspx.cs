using MyWebFormCases.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.ListViewDemo
{
    public partial class ListViewSelectMethodDemo : System.Web.UI.Page
    {

       
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        // my dbcontext
        EntityExe somedb = new EntityExe();
        public IQueryable<vx_EligibilitySearch> lstMembers_GetData()
        {
            //litNumSearchResults.Text = "";

  
            IQueryable<vx_EligibilitySearch> members = null;


            //if (!ShouldSearch)
            //    return members;

            //panelSearchForm.Visible = false;
            //lnkButtonBackToSearch.Visible = true;

            members = GetDataFromQuery();

        
            return members;

        }

        public IQueryable<vx_EligibilitySearch> GetDataFromQuery()
        {
            // IQueryable<Member> members = null;
            IQueryable<vx_EligibilitySearch> members = null;
            
            members = somedb.vx_EligibilitySearch.AsNoTracking().AsQueryable(); //.OrderBy(a => a.Claim_Number)


            //if (!string.IsNullOrEmpty(Search_MemberID))
            // members = members.Where(m => m.Subscriber_ID == Search_MemberID).AsQueryable();
        
            members = members.Where(m => m.Alternate_Id=="alter1").AsQueryable();
            return members;

        }
    }

            
}