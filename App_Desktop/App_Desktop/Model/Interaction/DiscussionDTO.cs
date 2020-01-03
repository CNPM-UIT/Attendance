using App_Desktop.Data;
using App_Desktop.Model.Interaction;
using System.Collections.Generic;

namespace App_Desktop.Model.Class
{
    public class DiscussionDTO
    {
        public int Id { get; set; }

        public int Status { get; set; }

        #region References

        public int LessionId { get; set; }

        #endregion
    }
}