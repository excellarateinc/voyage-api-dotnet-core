using System.Security.Claims;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Filters;

namespace Voyage.Api.Filters
{
    public class ClaimAuthorizeAttribute : TypeFilterAttribute
    {
        public ClaimAuthorizeAttribute(string claimType, string claimValue) : base(typeof(ClaimAuthorizeFilter))
        {
            Arguments = new object[] { new Claim(claimType, claimValue) };
        }
    }

    public class ClaimAuthorizeFilter : IAuthorizationFilter
    {
        private readonly Claim _claim;

        public ClaimAuthorizeFilter(Claim claim)
        {
            _claim = claim;
        }

        public void OnAuthorization(AuthorizationFilterContext context)
        {
            var identity = context.HttpContext.User.Identity as ClaimsIdentity;
            if (identity != null && !identity.IsAuthenticated)
            {
                context.Result = new UnauthorizedResult();
            }
            else if (identity != null && !identity.HasClaim(_claim.Type, _claim.Value))
            {
                context.Result = new ForbidResult();
            }
        }
    }
}
