using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp1
{
    class Program
    {
        static void Main(string[] args)
        {
            TextInput input= new NumericInput();


            input.Add('1');
            input.Add('a');
            input.Add('0');
            Console.WriteLine(TextInput.GetValue());
            Console.ReadKey();
           
        }



    }
    public class TextInput
    {

        protected static string str = null;
        public virtual void Add(char c)
        {
            str += c;
        }

        public static string GetValue()
        {
            return str;
        }
    }

    public class NumericInput : TextInput
    {

        public override void Add(char c)
        {

            if (!(c >= 48 && c <= 57))
            {
               
            }
            else
            {
                str += c;
            }
           
            
            }

    }

    

}
