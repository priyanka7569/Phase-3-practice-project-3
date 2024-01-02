using System;
using System.Collections.Generic;

namespace WebAPIRainbowSchoolDb.Models
{
    public partial class Subject
    {
        public Subject()
        {
            Marks = new HashSet<Mark>();
        }

        public int SubjectId { get; set; }
        public string SubjectName { get; set; } = null!;

        public virtual ICollection<Mark> Marks { get; set; }
    }
}
