using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(INF272_ProjectAssignment3Del02.Startup))]
namespace INF272_ProjectAssignment3Del02
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
