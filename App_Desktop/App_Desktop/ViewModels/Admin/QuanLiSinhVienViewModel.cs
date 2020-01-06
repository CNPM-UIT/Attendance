using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using App_Desktop.Model;
using App_Desktop.Model.Person;
using IO.Swagger.Api;
using Prism.Mvvm;

namespace App_Desktop.ViewModels.Admin
{
    public class QuanLiSinhVienViewModel : BindableBase
    {
        public ObservableCollection<StudentModel> _users;

        public ObservableCollection<StudentModel> Users
        {
            get { return _users; }
            set { SetProperty(ref _users, value); }
        }

        public QuanLiSinhVienViewModel()
        {
            Users = new ObservableCollection<StudentModel>()
            {
                new StudentModel()
                    {FirstName = "Lê", LastName = "Phương Ngân", StudentCode = "16520792", GioiTinhBool = true},
                new StudentModel()
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
            Users = new ObservableCollection<StudentModel>(result.Select(StudentModel.CreateFrom).ToList());
            callback.Execute();
        }
        private void Init()
        {
            studentsApi = new StudentsApi();
        }
    }
}