namespace MyWebFormCases.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("FitnessCenter")]
    public partial class FitnessCenter
    {
        public int id { get; set; }

        public DateTime selectDate { get; set; }

        public bool isAuto { get; set; }

        [StringLength(50)]
        public string name { get; set; }

        public bool isExported { get; set; }
    }
}
