using System;
using System.Collections.Generic;

#nullable disable

namespace Project_HTTTDL.Models
{
    public partial class Space
    {
        public double CartodbId { get; set; }
        public string TheGeom { get; set; }
        public string Name { get; set; }
        public string HoursOfOperation { get; set; }
        public double? NumberPhone { get; set; }
        public string Contact { get; set; }
        public int? TypeId { get; set; }
        public string Picture { get; set; }
        public int? ProvinceId { get; set; }
        public string Street { get; set; }

        public virtual Province Province { get; set; }
        public virtual TypeOfSpace Type { get; set; }
    }
}
