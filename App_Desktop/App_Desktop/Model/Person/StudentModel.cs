using IO.Swagger.Model;

namespace App_Desktop.Model.Person
{
    public class StudentModel
    {
        public int Id { get; set; }
        public string StudentCode { get; set; }

        public string FirstName { get; set; }

        public string LastName { get; set; }

        public string Name { get {
                return LastName +" "+ FirstName;
            } }
        public bool GioiTinhBool { get; set; } //nam = true, nữ = false

        public string GioiTinh
        {
            get
            {
                return GioiTinhBool ? "Nam" : "Nữ";
            }
        }

        public static StudentModel CreateFrom(StudentDTO arg)
        {
            return new StudentModel()
            {
                Id = arg.Id.Value,
                StudentCode = arg.Code,
                FirstName = arg.FirstName,
                LastName = arg.LastName,
                GioiTinhBool = arg.IsMale.Value
            };
        }

        public StudentDTO CreateTo()
        {
            return new StudentDTO() { Code = this.StudentCode, FirstName = this.FirstName, IsMale = this.GioiTinhBool, LastName = this.LastName };

        }
        public override string ToString()
        {
            return $"{nameof(Id)}: {Id}, {nameof(StudentCode)}: {StudentCode}, {nameof(FirstName)}: {FirstName}, {nameof(LastName)}: {LastName}, {nameof(Name)}: {Name}, {nameof(GioiTinhBool)}: {GioiTinhBool}, {nameof(GioiTinh)}: {GioiTinh}";
        }
    }
}
