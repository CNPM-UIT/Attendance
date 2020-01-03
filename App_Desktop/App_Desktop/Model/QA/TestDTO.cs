using App_Desktop.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace App_Desktop.Model.QA
{
    public class TestDTO
    {
        public int Id { get; set; }

        public string Title { get; set; }

        public string Deadline { get; set; }

        public int Status { get; set; }

        #region References

        public int LessionId { get; set; }

        #endregion
    }
}
