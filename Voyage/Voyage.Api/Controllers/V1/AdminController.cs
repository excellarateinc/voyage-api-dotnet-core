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
        [HttpGet]
        [MapToApiVersion("1")]
        public IActionResult Get()
        {
            return new OkObjectResult("Version One");
        }
    }
}
