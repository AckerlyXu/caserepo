using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Security.Claims;
using System.Threading.Tasks;
using System.Web;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;


namespace MVCLearning.Models
{
    public class ApplicationUser : IdentityUser
    {

        public int supplierId { get; set; }
        public string supplierName { get; set; }
        public string firstLogin { get; set; }
        public string WebStatus { get; set; }
        [Column(TypeName = "datetime2")]
        public DateTime LastLogDateTime { get; set; }




        //public ClaimsIdentity GenerateUserIdentity(ApplicationUserManager manager)
        //{
        //    // Note the authenticationType must match the one defined in CookieAuthenticationOptions.AuthenticationType
        //    //var userIdentity = manager.CreateIdentity(this, DefaultAuthenticationTypes.ApplicationCookie);
        //    //// Add custom user claims here
        //    //return userIdentity;
        //}

        //public Task<ClaimsIdentity> GenerateUserIdentityAsync(ApplicationUserManager manager)
        //{
        //    return Task.FromResult(GenerateUserIdentity(manager));
        //}








    }


}