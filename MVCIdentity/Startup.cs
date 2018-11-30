using Microsoft.Owin;
using MVCIdentity.Models;
using Owin;

[assembly: OwinStartupAttribute(typeof(MVCIdentity.Startup))]
namespace MVCIdentity
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
           

            ConfigureAuth(app);
        }
    }
}
