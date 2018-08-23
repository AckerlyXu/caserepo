using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Xml.Serialization;

namespace MyWebFormCases.xml
{
  
    public class MailProperties
    {
      
        public string  Subject { get; set; }

      
        public string  From { get; set; }

       
        public string  To { get; set; }
    }
}