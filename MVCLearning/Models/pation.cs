namespace MVCLearning.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("pation")]
    public partial class pation
    {
        public int id { get; set; }

        public int? age { get; set; }

        [StringLength(50)]
        public string sex { get; set; }

        public DateTime date { get; set; }
    }
}
