using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Filters;
using Voyage.Api.Extensions;
using Voyage.Common.Exceptions;

namespace Voyage.Api.Filters
{
    public class ApiExceptionFilterAttribute : ExceptionFilterAttribute
    {
        public override void OnException(ExceptionContext context)
        {
            if (context.Exception is ApiException exception)
            {
                context.HttpContext.Response.StatusCode = (int)exception.StatusCode;
                context.Result = new JsonResult(exception.Message.ToRequestErrorModel());
            }
        }
    }
}
