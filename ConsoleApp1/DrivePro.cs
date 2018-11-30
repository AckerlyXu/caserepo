using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.InteropServices;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp1
{

    class DrivePro
    {
        [DllImport("kernel32.dll")]
        private static extern int GetVolumeInformation(
string lpRootPathName,
string lpVolumeNameBuffer,
int nVolumeNameSize,
ref int lpVolumeSerialNumber,
int lpMaximumComponentLength,
int lpFileSystemFlags,
string lpFileSystemNameBuffer,
int nFileSystemNameSize
); 

        public static void MainA(string[] args)
        {
            const int MAX_FILENAME_LEN = 256;
            int retVal = 0;
            int a = 0;
            int b = 0;
            string str1 = null;
            string str2 = null;
            int i = GetVolumeInformation(
            "D://" ,
            str1,
            MAX_FILENAME_LEN,
            ref retVal,
            a,
            b,
            str2,
            MAX_FILENAME_LEN
            );
            Console.WriteLine(  retVal.ToString("x"));
            Console.ReadKey();
         
        }
    }
}
