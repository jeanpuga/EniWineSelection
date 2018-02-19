using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace APP.Controllers
{
    public class ParametrosController : ApiController
    {
        // GET: api/Parametros
        public List<MODELS.Parametros> Get()
        {
            return BUSINESS.Parametros.Obter();
        }

        // GET: api/Parametros/5
        public string Get(int id)
        {
            return "value";
        }

        // POST: api/Parametros
        public void Post([FromBody]string value)
        {
        }

        // PUT: api/Parametros/5
        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE: api/Parametros/5
        public void Delete(int id)
        {
        }
    }
}
