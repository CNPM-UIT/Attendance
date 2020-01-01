using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace App_Desktop.Model.Bridge
{
    public class CourseLecturerDTO
    {
        public int Id { get; set; }

        public int Type { get; set; }

        #region References

        public int CourseId { get; set; }

        public int LecturerId { get; set; }

        #endregion
    }
}
