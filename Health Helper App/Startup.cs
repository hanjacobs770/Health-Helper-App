using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Health_Helper_App.Startup))]
namespace Health_Helper_App
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
