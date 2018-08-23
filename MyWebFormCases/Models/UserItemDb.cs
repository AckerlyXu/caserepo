namespace MyWebFormCases.Models
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class UserItemDb : DbContext
    {
        public UserItemDb()
            : base("name=UserItemDb3")
        {
        }

        public virtual DbSet<MyUserItem> MyUserItems { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
        }
    }
}
