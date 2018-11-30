using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.AspNet.Identity.Owin;
using Microsoft.Owin;

namespace MVCIdentity.Models
{
    public interface ISportUserManager
    {
        Task<ApplicationUser> FindAsync(string userName, string password);
        Task SignInAsync(ApplicationUser user, bool isPersistent);
        void SignOut();
        Task<IdentityResult> CreateAsync(ApplicationUser user, string password);
    }
    public class SportUserManager : UserManager<ApplicationUser>, ISportUserManager
    {
        public object SystemMessage { get; private set; }

        public SportUserManager(IUserStore<ApplicationUser> store) : base(store)
        {
        }

        public static SportUserManager Create(IdentityFactoryOptions<SportUserManager> options, IOwinContext context)
        {



            var manager = new SportUserManager(new UserStore<ApplicationUser>(context.Get<ApplicationDbContext>()));
            // Configure validation logic for usernames
            manager.UserValidator = new UserValidator<ApplicationUser>(manager)
            {
                AllowOnlyAlphanumericUserNames = false,
                RequireUniqueEmail = true
            };

            // Configure validation logic for passwords
            manager.PasswordValidator = new PasswordValidator
            {
                RequiredLength = 6,
                RequireNonLetterOrDigit = true,
                RequireDigit = true,
                RequireLowercase = true,
                RequireUppercase = true,
            };

            // Configure user lockout defaults
            manager.UserLockoutEnabledByDefault = true;
            manager.DefaultAccountLockoutTimeSpan = TimeSpan.FromMinutes(5);
            manager.MaxFailedAccessAttemptsBeforeLockout = 5;

            // Register two factor authentication providers. This application uses Phone and Emails as a step of receiving a code for verifying the user
            // You can write your own provider and plug it in here.
            manager.RegisterTwoFactorProvider("Phone Code", new PhoneNumberTokenProvider<ApplicationUser>
            {
                MessageFormat = "Your security code is {0}"
            });
            manager.RegisterTwoFactorProvider("Email Code", new EmailTokenProvider<ApplicationUser>
            {
                Subject = "Security Code",
                BodyFormat = "Your security code is {0}"
            });
            manager.EmailService = new EmailService();
            manager.SmsService = new SmsService();
            var dataProtectionProvider = options.DataProtectionProvider;
            if (dataProtectionProvider != null)
            {
                manager.UserTokenProvider =
                    new DataProtectorTokenProvider<ApplicationUser>(dataProtectionProvider.Create("ASP.NET Identity"));
            }
            return manager;




        }

        //public override Task<ApplicationUser> FindAsync(string userName, string password)
        //{
        //    var task = Task<ApplicationUser>.Run(() =>
        //    {
                

        //        return null;
        //    });

        //    return task;
        //}
        public async Task SignInAsync(ApplicationUser user, bool isPersistent)
        {
            SignOut();

            var identity = await base.CreateIdentityAsync(user, DefaultAuthenticationTypes.ApplicationCookie);
           // _authenticationManager.SignIn(new AuthenticationProperties() { IsPersistent = isPersistent }, identity);
        }

        public override async Task<IdentityResult> CreateAsync(ApplicationUser user, string password)
        {
         
            IUserPasswordStore<ApplicationUser> aa = Store as IUserPasswordStore<ApplicationUser>;
            if ((object)user == null)
                //  return new IdentityResult(string.Format(SystemMessage.NewException, "CreateAsync User Null"));
                if (password == null)
                    return null;
             //   return new IdentityResult(string.Format(SystemMessage.NewException, "CreateAsync Password Null"));

            IdentityResult sssS = await this.UpdatePassword(aa, user, password);



            IdentityResult s = await base.CreateAsync(user);
            //await this.UpdateSecurityStampInternal(user);
            //IdentityResult identityResult = await this.UserValidator.ValidateAsync(user).WithCurrentCulture<IdentityResult>();
            //if (!identityResult.Succeeded)
            //    return identityResult;
            //if (this.UserLockoutEnabledByDefault && this.SupportsUserLockout)
            //    await this.GetUserLockoutStore().SetLockoutEnabledAsync(user, true).WithCurrentCulture();
            await this.Store.CreateAsync(user);
            //return IdentityResult.Success;

            //Store.CreateAsync(user);
           // var ss = _userService;
            return null;
        }


        public void SignOut()
        {
           
        }

      
    }
}