using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Runtime.InteropServices;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;




namespace MyWebFormCases.Html5
{
    public partial class VoiceCapture : System.Web.UI.Page
    {
        [DllImport("winmm.dll", EntryPoint = "mciSendStringA", ExactSpelling = true, CharSet = CharSet.Ansi, SetLastError = true)]
        private static extern int record(string lpstrCommand, string lpstrReturnString, int uReturnLength, int hwndCallback);

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["WebFormCases.Models.supplyModelConnectionString2"].ConnectionString.ToString());
        Timer t = new Timer();
        protected void Page_Load(object sender, EventArgs e)
        {
            //RecAudio.Attributes["mmm"] = "true";
            RecAudio.Attributes["src"] = "~/upload/example.mp4";

        }

        protected void btnStop_Click(object sender, EventArgs e)
        {
            //int result= record("open new Type waveaudio Alias recsound", "", 0, 0);
            //int result = record("open new Type mp4 Alias recsound", "", 0, 0);
            //int result1=  record("record recsound", "", 0, 0);

            //btnRecord.Enabled = false;
            //Label1.Text += "open new Type" + result + " " + " record recsound" + " " + result1;
            //btnStop.Enabled = true;
            string strPath = Server.MapPath("upload");
              strPath = strPath + "/example1.wav";

            record("stop movie", "", 0, 0);
            record("save movie " +strPath, "", 0, 0);
            record("close movie", "", 0, 0);

        }

        protected void btnRecord_Click(object sender, EventArgs e)
        {

            record("set wave bitpersample 8", "", 0, 0);

            record("set wave samplespersec 20000", "", 0, 0);
            record("set wave channels 2", "", 0, 0);
            record("set wave format tag pcm", "", 0, 0);
            record("open new type WAVEAudio alias movie", "", 0, 0);

            record("record movie", "", 0, 0);

            //  timer1.Enabled = false;
            //    string strPath = Server.MapPath("upload");
            //    strPath = strPath + "/example1.mp4";
            //int m=    record("save recsound " + strPath, "", 0, 0);
            //    int n=record("close recsound", "", 0, 0);

            //    Label1.Text += "savae recsound " + m + " " + " close recsound" + " " + n;

            //System.IO.File.WriteAllBytes("f:\\Test.wav", bytes);
            //    btnRecord.Enabled = true;
            //btnSave.Enabled = true;
            //UpdateTimer.Enabled = true;
        }
    }
}