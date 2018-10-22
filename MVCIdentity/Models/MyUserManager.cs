using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using Microsoft.AspNet.Identity;

namespace MVCIdentity.Models
{
    public class MyUserManager : AppUserManager<ApplicationUser>
    {
        public MyUserManager(IUserStore<ApplicationUser> store) : base(store)
        {
        }
        public override async Task<IdentityResult> CreateAsync(ApplicationUser user, string password)
        {
            IUserPasswordStore<ApplicationUser> pws = Store as IUserPasswordStore<ApplicationUser>;
           

            IdentityResult result = await this.UpdatePassword(pws, user, password);



            IdentityResult secondResult = await base.CreateAsync(user);

            //at last calling Store.CreateAsync(user); for db insert
            return bla bla;
        }
    }
}