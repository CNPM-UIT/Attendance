using App_Desktop.Data;
using IO.Swagger.Model;
using Newtonsoft.Json.Linq;
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

        public LecturerModel()
        {
        }

        public LecturerModel(string lecturerCode, Enums.AcademicRank academicRankEnum, string firstName, string lastName, bool gioiTinhBool)
        {
            LecturerCode = lecturerCode;
            AcademicRankEnum = academicRankEnum;
            FirstName = firstName;
            LastName = lastName;
            GioiTinhBool = gioiTinhBool;
        }

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

        internal static LecturerModel CreateFrom(LecturerDTO arg)
        {
            return new LecturerModel(arg.Id.ToString(), (Enums.AcademicRank)arg.AcademicRank,
                arg.FirstName, arg.LastName, arg.IsMale.GetValueOrDefault(true));
        }
    }
}
