using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace App_Desktop.Model.Bridge
{
    public class CourseStudentDTO
    {
        public int Id { get; set; }

        #region References

        public int CourseId { get; set; }

        public int StudentId { get; set; }

        #endregion
    }
}
