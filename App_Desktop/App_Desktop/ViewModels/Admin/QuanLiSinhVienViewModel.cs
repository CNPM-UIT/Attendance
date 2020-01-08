using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using App_Desktop.Model;
using App_Desktop.Model.Person;
using IO.Swagger.Api;
using IO.Swagger.Model;
using Prism.Mvvm;

namespace App_Desktop.ViewModels.Admin
{
    public class QuanLiSinhVienViewModel : BindableBase
    {
        public ObservableCollection<StudentModelWithCommand> _users;

        public ObservableCollection<StudentModelWithCommand> Users
        {
            get { return _users; }
            set { SetProperty(ref _users, value); }
        }

        private StudentModelWithCommand _createdStudentModel;

        public StudentModelWithCommand CreatedStudentModel
        {
            get { return _createdStudentModel; }
            set
            {
                SetProperty(ref _createdStudentModel, value);
            }
        }

        public QuanLiSinhVienViewModel()
        {
            Init();
            Users = new ObservableCollection<StudentModelWithCommand>()
            {
                new StudentModelWithCommand()
                    {FirstName = "Lê", LastName = "Phương Ngân", StudentCode = "16520792", GioiTinhBool = true},
                new StudentModelWithCommand()
                    {FirstName = "Lê", LastName = "Ngân Phương", StudentCode = "16525555", GioiTinhBool = false}
            };
        }

        private StudentsApi studentsApi;
        public QuanLiSinhVienViewModel(UICallback callback)
        {
            Init();
            LoadData(callback);
        }
        private async void LoadData(UICallback callback)
        {
            var result = await studentsApi.ApiStudentsGetAsync();
            Users = new ObservableCollection<StudentModelWithCommand>(result.Select(k =>
                {
                  return StudentModelWithCommand.CreateFrom(k, RefreshUI);
                }).ToList());
            callback.Execute();
        }

        private void RefreshUI()
        {
            LoadData(new UICallback());
        }
        private void Init()
        {
            studentsApi = new StudentsApi();
            CreatedStudentModel = new StudentModelWithCommand(){
                RefreshUI = RefreshUI
            };
        }
    }
}