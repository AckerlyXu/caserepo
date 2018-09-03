namespace MyWebFormCases.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class vx_EligibilitySearch
    {
        [StringLength(50)]
        public string Group_Description { get; set; }

        [StringLength(50)]
        public string Group_Id { get; set; }

        [StringLength(50)]
        public string Alternate_Id { get; set; }

        
        public int id { get; set; }
    }
}
