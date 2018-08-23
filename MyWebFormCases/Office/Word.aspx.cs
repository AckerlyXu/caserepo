using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.Office.Interop.Word;

namespace WebFormCases.Office
{
    public partial class Word : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Application objWordApp = new Application();

            Document objWordDoc = new Document();
            Object missing = Type.Missing;
            object visible = true;
            object objCreateDoc = Request.MapPath("/Office/merge.docx");


            string strNewDocPath1 = Request.MapPath("/Office/test.docx");
            string strNewDocPath2 = Request.MapPath("/Office/test1.docx");
            string strNewDocPath3 = Request.MapPath("/Office/test2.docx");

            object objPageBreak = Microsoft.Office.Interop.Word.WdBreakType.wdPageBreak;

            try
            {

                objWordDoc = objWordApp.Documents.Open(objCreateDoc, false, false, ref missing,
                                                    ref missing, ref missing, ref missing, ref missing,
                                                    ref missing, ref missing, ref missing, true,
                                                    ref missing, ref missing, ref missing, ref missing);

                objWordDoc.Activate();
                objWordApp.Selection.InsertFile(strNewDocPath1, ref missing, true, ref missing, ref missing);
                objWordApp.Selection.InsertBreak(ref objPageBreak);
                objWordApp.Selection.InsertFile(strNewDocPath2, ref missing, ref missing, ref missing, ref missing);
                objWordApp.Selection.InsertBreak(ref objPageBreak);
                objWordApp.Selection.InsertFile(strNewDocPath3, ref missing, ref missing, ref missing, ref missing);
                objWordApp.Selection.InsertBreak(ref objPageBreak);
                objWordApp.ActiveDocument.SaveAs(objCreateDoc, ref missing, ref missing,
                                                  ref missing, ref missing, ref missing, ref missing,
                                                  ref missing, ref missing, ref missing, ref missing);
                objWordApp.ActiveDocument.Close(ref missing, ref missing, ref missing);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}