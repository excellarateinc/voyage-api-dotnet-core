using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Voyage.Api.Filters;

namespace Voyage.Api.Controllers.V1
{
    [ApiVersion("1.0")]
    [Route("[controller]")]
    [ApiController]
    public class AdminController : ControllerBase
    {
        private readonly IAdminService _adminService;

        /// <summary>
        /// Constructor for the Admin Controller.
        /// </summary>
        public AdminController(IAdminService adminService)
        {
            _adminService = adminService.ThrowIfNull(nameof(adminService));
        }

        /// <summary>
        /// Update users' account status
        /// </summary>
        [ClaimAuthorize(ClaimValue = AppClaims.UpdateUser)]
        [HttpPut]
        [Route("users/{userId}/account-status")]
        [SwaggerResponse(200, "UserModel", typeof(UserModel))]
        [SwaggerResponse(400, "BadRequestException")]
        [SwaggerResponse(401, "UnauthorizedException")]
        public async Task<IHttpActionResult> ToggleAccountStatus([FromUri] string userId, [FromBody] ChangeAccountStatusModel changeAccountStatusModel)
        {
            var result = await _adminService.ToggleAccountStatus(userId, changeAccountStatusModel);
            return Ok(result);
        }
        //[HttpGet]
        //[MapToApiVersion("1")]
        //public IActionResult Get()
        //{
        //    return new OkObjectResult("Version One");
        //}
    }
}
