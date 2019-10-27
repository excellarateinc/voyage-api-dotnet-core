using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Voyage.Api.Extensions
{
    public class ResponseErrorModel
    {
        public string Error { get; set; }

        public string Field { get; set; }

        public string ErrorDescription { get; set; }
    }
}
