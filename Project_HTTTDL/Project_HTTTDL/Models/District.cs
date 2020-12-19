using System;
using System.Collections.Generic;

#nullable disable

namespace Project_HTTTDL.Models
{
    public partial class District
    {
        public int DistrictId { get; set; }
        public string DistrictName { get; set; }
        public int ProvinceId { get; set; }

        public virtual Province Province { get; set; }
    }
}
