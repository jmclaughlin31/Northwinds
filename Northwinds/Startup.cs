using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Northwinds.Startup))]
namespace Northwinds
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
