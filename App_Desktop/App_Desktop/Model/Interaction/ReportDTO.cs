using App_Desktop.Model.Person;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace App_Desktop.Model.Interaction
{
    public class ReportDTO
    {
        public int Id { get; set; }

        public string Comment { get; set; }

        #region References

        public int StudentId { get; set; }

        #endregion
    }
}
