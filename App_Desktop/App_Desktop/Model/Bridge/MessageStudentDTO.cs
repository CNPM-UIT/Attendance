using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace App_Desktop.Model.Bridge
{
    public class MessageStudentDTO : MessageDTO
    {
        #region References

        public int StudentId { get; set; }

        public int DiscussionId { get; set; }

        #endregion
    }
}
