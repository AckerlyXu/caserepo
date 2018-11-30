using MyWebFormCases.Utils;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.csharpDemo2
{
    public partial class EncryptDecrypt : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            EncryptDecryptUtil.Encrypt("5441191000005226", "F8660BF9063B1BBEFEA2BC413C8514FE", Server.MapPath("/csharpDemo2/code.txt"));
            EncryptDecryptUtil.Decrypt(Server.MapPath("/csharpDemo2/code.txt"), Server.MapPath("/csharpDemo2/result.txt"), "F8660BF9063B1BBEFEA2BC413C8514FE");
        }
    }
}