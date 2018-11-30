using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MyWebFormCases
{
    public class CalculatorService : ICalculator
    {
     

        int ICalculator.Add(int a, int b)
        {
            return a + b;
        }
    }
}