using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace App_Desktop.Model.Interaction
{
    public class DocumentDTO
    {
        public int Id { get; set; }

        public string Name { get; set; }

        public string Link { get; set; }

        #region References

        public int LessionId { get; set; }

        #endregion
    }
}
