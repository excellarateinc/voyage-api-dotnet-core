using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Autofac;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.HttpsPolicy;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using Microsoft.Extensions.Logging;

namespace Voyage.Api
{
    public class Startup
    {
        public Startup(IConfiguration configuration)
        {
            Configuration = configuration;
        }

        public IConfiguration Configuration { get; }

        // This method gets called by the runtime. Use this method to add services to the container.
        public void ConfigureServices(IServiceCollection services)
        {
            services.AddCors();
            services.AddControllers();
            //services.AddMvc(options =>
            //{
            //    options.Filters.Add<ApiExceptionFilterAttribute>();
            //    options.Filters.Add<ValidateModelAttribute>();
            //});

            //services.AddAuthentication(JwtBearerDefaults.AuthenticationScheme)
            //    .AddJwtBearer(options =>
            //    {
            //        options.TokenValidationParameters = new TokenValidationParameters
            //        {
            //            // Clock skew compensates for server time drift.
            //            ClockSkew = TimeSpan.FromMinutes(5),
            //            // Specify the key used to sign the token:
            //            IssuerSigningKeyResolver = new CognitoSecurity(HostingEnvironment.ContentRootPath).IssuerSigningKeyResolver,
            //            RequireSignedTokens = true,
            //            // Ensure the token hasn't expired:
            //            RequireExpirationTime = true,
            //            ValidateLifetime = false, // TODO: Turn back to true.
            //                                      // Ensure the token audience matches our audience value (default true):
            //            ValidateAudience = true,
            //            ValidAudience = Configuration["Cognito:Audience"],
            //            // Ensure the token was issued by a trusted authorization server (default true):
            //            ValidateIssuer = true,
            //            ValidIssuer = Configuration["Cognito:Issuer"]
            //        };
            //    });
        }

        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        public void Configure(IApplicationBuilder app, IWebHostEnvironment env)
        {
            if (env.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
            }

            app.UseCors(builder => builder
                .AllowAnyOrigin()
                .AllowAnyHeader()
                .AllowAnyMethod());

            app.UseHttpsRedirection();

            app.UseRouting();

            app.UseAuthentication();
            app.UseAuthorization();

            app.UseEndpoints(endpoints =>
            {
                endpoints.MapControllers();
            });
        }

        // ConfigureContainer is where you can register things directly
        // with Autofac. This runs after ConfigureServices so the things
        // here will override registrations made in ConfigureServices.
        // Don't build the container; that gets done for you. If you
        // need a reference to the container, you need to use the
        // "Without ConfigureContainer" mechanism shown later.
        public void ConfigureContainer(ContainerBuilder builder)
        {
            //builder.RegisterModule(new BusinessModule());
            //builder.RegisterModule(new DataModule(Configuration));
        }
    }
}
