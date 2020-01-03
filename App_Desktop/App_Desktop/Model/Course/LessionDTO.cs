using App_Desktop.Model.Interaction;
using App_Desktop.Model.Person;
using App_Desktop.Model.QA;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace App_Desktop.Model.Class
{
    public class LessionDTO
    {
        public int Id { get; set; }

        public string Time { get; set; }

        #region References

        public int LecturerId { get; set; }
        public int CourseId { get; set; }

        #endregion
    }
}
