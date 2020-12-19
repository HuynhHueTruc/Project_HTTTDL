using System;
using System.Collections.Generic;

#nullable disable

namespace Project_HTTTDL.Models
{
    public partial class TypeOfSpace
    {
        public TypeOfSpace()
        {
            Spaces = new HashSet<Space>();
        }

        public int TypeId { get; set; }
        public string TypeName { get; set; }

        public virtual ICollection<Space> Spaces { get; set; }
    }
}
