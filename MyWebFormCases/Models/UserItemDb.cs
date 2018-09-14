namespace MyWebFormCases.Models
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class UserItemDb : DbContext
    {
        public UserItemDb()
            : base("name=UserItemDb7")
        {
        }

        public virtual DbSet<IAApplication> IAApplications { get; set; }
        public virtual DbSet<Item_Table> Item_Table { get; set; }
        public virtual DbSet<MyUserItem> MyUserItems { get; set; }
        public virtual DbSet<Register> Registers { get; set; }
        public virtual DbSet<FitnessCenter> FitnessCenters { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Item_Table>()
                .Property(e => e.Item_Name)
                .IsUnicode(false);

            modelBuilder.Entity<Item_Table>()
                .Property(e => e.Unit)
                .IsUnicode(false);
        }
    }
}
