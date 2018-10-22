using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Web;

namespace MVCIdentity.Models
{
    public class AppUserManager  <TUser> : UserManager<TUser> where TUser : class, IUser<string>
    {
    

        public AppUserManager(IUserStore<TUser> store) : base(store)
        {
        }

        public void get(ApplicationUser user)
        {
        
        }
        public virtual async Task<IdentityResult> CreateAsync(TUser user, string password)
        {
           
           
            if ((object)user == null)
                throw new ArgumentNullException(nameof(user));
            if (password == null)
                throw new ArgumentNullException(nameof(password));
           
           
            return await this.CreateAsync(user);
        }
        public virtual async Task<IdentityResult> CreateAsync(TUser user)
        {

            IdentityResult identityResult = await this.UserValidator.ValidateAsync(user);
            if (!identityResult.Succeeded)
                return identityResult;
            if (this.UserLockoutEnabledByDefault && this.SupportsUserLockout)

                await this.Store.CreateAsync(user);
            return IdentityResult.Success;
        }
       
    }
}