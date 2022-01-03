using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(AtelierForm.Startup))]
namespace AtelierForm
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
