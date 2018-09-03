namespace MyWebFormCases.Models
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class EntityExe : DbContext
    {
        public EntityExe()
            : base("name=EntityExe1")
        {
        }

        public virtual DbSet<vx_EligibilitySearch> vx_EligibilitySearch { get; set; }
       
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
        }
    }
}
