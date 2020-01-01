using App_Desktop.Model.Class;
using App_Desktop.Model.Person;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace App_Desktop.Model
{
    public class CourseDTO
    {
        public int Id { get; set; }

        public string Code { get; set; }

        public string Name { get; set; }

        public string StartDate { get; set; }

        public string EndDate { get; set; }

        public int StudentNumber { get; }

        #region References

        public int SemesterId { get; set; }

        #endregion
    }
}
