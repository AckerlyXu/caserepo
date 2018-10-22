using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace MVCLearning.Models
{
    public class JoinView
    {

        public Product product { get; set; }
        public Category category { get; set; }
    }
}