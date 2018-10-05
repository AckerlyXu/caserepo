using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MyWebFormCases.csharpDemo
{
    [AttributeUsage(AttributeTargets.Property)]
    public class NeedCheckAttribute:Attribute
    {
        public bool needCheck { get; set; }
        public NeedCheckAttribute(bool needCheck)
        {
            this.needCheck = needCheck;
        }
    }
}