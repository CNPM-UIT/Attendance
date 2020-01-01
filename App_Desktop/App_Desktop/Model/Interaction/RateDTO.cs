using App_Desktop.Data;
using App_Desktop.Model.Person;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace App_Desktop.Model.Interaction
{
    public class RateDTO
    {
        public int Id { get; set; }

        public int Level { get; set; }


        #region References

        public int StudentId { get; set; }
        public int LessionId { get; set; }

        #endregion
    }
}
