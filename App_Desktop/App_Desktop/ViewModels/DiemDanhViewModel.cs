using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using App_Desktop.Data;
using App_Desktop.Model;
using App_Desktop.Model.Class;

using App_Desktop.Model.Person;
using IO.Swagger.Api;
using IO.Swagger.Model;
using Prism.Mvvm;


namespace App_Desktop.ViewModels
{
    public class DiemDanhViewModel : BindableBase
    {
        private ObservableCollection<DiemDanhModel> _users;
        public ObservableCollection<DiemDanhModel> Users
        {
            get { return _users; }
            set { SetProperty(ref _users, value); }
        }
        public DiemDanhViewModel()
        {
            //var student = new StudentModel() { Name = "Tuan", StudentCode = "16520", DiHoc = false };
            Users = new ObservableCollection<DiemDanhModel>()
            {
                new DiemDanhModel() { Stt = 1, Name = "Ngan", MSSV = "123456", StatusDiHoc = false, StatusVang = false },
                new DiemDanhModel() { Stt = 2, Name = "NganLe", MSSV = "456789", StatusDiHoc = true, StatusVang = false},
                //new DiemDanhModel(student)
                //new StudentModel() { Id = 4, Name = "John Doe", StudentCode = "16520111", },
                //new StudentModel() { Id = 5, Name = "Jane Doe", StudentCode = "16520113" },
                //new StudentModel() { Id = 6, Name = "Sammy Doe", StudentCode = "16520114" }
            };
        }

        private AttendancesApi attendancesApi;
        private StudentsApi studentsApi;

        private void Init()
        {
            attendancesApi = new AttendancesApi();
            studentsApi = new StudentsApi();
        }

        private async void LoadData(UICallback uiCallback)
        {
            var result = attendancesApi.ApiAttendancesGet();
            var task = result.Select(async k =>
            {
                var student = await studentsApi.ApiStudentsIdGetAsync(k.StudentId);
                return DiemDanhModel.CreateFrom(k, student);
            }).ToList();
            Users = new ObservableCollection<DiemDanhModel>(await Task.WhenAll(task));
            uiCallback.Execute();
        }
        public DiemDanhViewModel(UICallback uiCallback)
        {
            Init();
            LoadData(uiCallback);
        }
    }

    public class DiemDanhModel
    {
        public string Name { get; set; }
        public string MSSV { get; set; }

        public int Stt { get; set; }
        
        public bool StatusDiHoc { get; set; }

        public bool StatusVang { get; set; }
        
        public DiemDanhModel()
        {

        }

        public DiemDanhModel(StudentModel st)
        {
            this.Name = st.Name;
            this.Stt = st.Id;
            this.MSSV = st.StudentCode;
            this.StatusVang = false;
        }

        public static DiemDanhModel CreateFrom(AttendanceDTO arg, StudentDTO studentDto)
        {
            var status = ((Enums.AttendanceStatus) arg.AttendanceStatus.Value);
            bool isGoToSchool = status == Enums.AttendanceStatus.Present;
            bool isAbsentWithPermission = isGoToSchool && status == Enums.AttendanceStatus.ExcusedAbsence;
            return new DiemDanhModel()
            {
                Name = studentDto.FirstName + studentDto.LastName,
                MSSV = studentDto.Code,
                StatusDiHoc = isGoToSchool,
                StatusVang = isAbsentWithPermission
            };
        }
    }
    

}
