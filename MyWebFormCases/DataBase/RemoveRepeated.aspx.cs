using MyWebFormCases.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.DataBase
{
    public partial class RemoveRepeated : System.Web.UI.Page
    {
        UserItemDb userItemDb = new UserItemDb();
        protected void Page_Load(object sender, EventArgs e)
        {                                                       //select all the userId
            int[] repeatedIds = userItemDb.MyUserItems.Select(u => u.UserId)
                                                 //select records whose userId equals to current UserId
                                                 // and whose count >1
                 .Where(userId => userItemDb.MyUserItems.Where(u => u.UserId == userId).Count() > 1).Distinct()
                 .ToArray();

            //List<MyUserItem> list = userItemDb.MyUserItems.Where(u => repeatedIds.Contains(u.UserId)).ToList();

            List<MyUserItem> list2 = repeatedIds.Select(id => userItemDb.MyUserItems.Where(u => u.UserId == id).FirstOrDefault()).ToList();
            GridView1.DataSource = list2;
            GridView1.DataBind();
        }
    }
}