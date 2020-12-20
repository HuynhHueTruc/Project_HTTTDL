using Newtonsoft.Json.Linq;
using Project_HTTTDL.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Project_HTTTDL.BLL
{
    public class spaceBLL
    {
        public QL_TauXeContext cn;
        //Ket noi csdl
        public spaceBLL()
        {
            cn = new QL_TauXeContext();
        }

        //Them du lieu
        public void AddSpace(JObject data)
        {
            
        }

    }
}
