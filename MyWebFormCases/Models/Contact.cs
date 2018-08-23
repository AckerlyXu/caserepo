namespace MyWebFormCases.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class Contact
    {
        [Key]
        public int CID { get; set; }

        public string Name { get; set; }

        public int? Supplier_SID { get; set; }

        public virtual Supplier Supplier { get; set; }
    }
}
