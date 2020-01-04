using App_Desktop.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace App_Desktop.Model.Person
{
    public class LecturerModel
    {
        public string LecturerCode { get; set; }

        public Enums.AcademicRank AcademicRankEnum { get; set; }
        
        public string FirstName { get; set; }

        public string LastName { get; set; }

        public string Name
        {
            get
            {
                return LastName +" " + FirstName;
            }
        }
        public bool GioiTinhBool { get; set; } //nam = true, nữ = false

        public string GioiTinh
        {
            get
            {
                return GioiTinhBool ? "Nam" : "Nữ";
            }
        }

        public string AcademicRank
        {
            get
            {
                return AcademicRankEnum.ToString();
            }
        }
    }
}
