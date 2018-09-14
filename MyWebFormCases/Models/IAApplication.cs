namespace MyWebFormCases.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("IAApplication")]
    public partial class IAApplication
    {
        [StringLength(50)]
        public string Title { get; set; }

        [StringLength(50)]
        public string Sector { get; set; }

        public DateTime? Creationdate { get; set; }

        public int id { get; set; }
    }
}
