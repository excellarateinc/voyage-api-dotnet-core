using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace Voyage.Api.Controllers.V1
{
    [ApiVersion("1.0")]
    [Route("api/v{v:apiVersion}/[controller]")]
    [ApiController]
    public class ChatsController : ControllerBase
    {
    }
}
