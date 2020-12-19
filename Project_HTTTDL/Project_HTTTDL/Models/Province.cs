using System;
using System.Collections.Generic;

#nullable disable

namespace Project_HTTTDL.Models
{
    public partial class Province
    {
        public Province()
        {
            Districts = new HashSet<District>();
            Spaces = new HashSet<Space>();
        }

        public int ProvinceId { get; set; }
        public string ProvinceName { get; set; }

        public virtual ICollection<District> Districts { get; set; }
        public virtual ICollection<Space> Spaces { get; set; }
    }
}
