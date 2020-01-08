using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using App_Desktop.Data;
using App_Desktop.Model;
using App_Desktop.Model.Person;
using IO.Swagger.Api;
using Prism.Mvvm;

namespace App_Desktop.ViewModels.Admin
{
    public class QuanLiGiangVienViewModel : BindableBase
    {
        private LecturersApi lecturersApi;
        public ObservableCollection<LecturerModel> _users;
        public ObservableCollection<LecturerModel> Users
        {
            get { return _users; }
            set { SetProperty(ref _users, value); }
        }

        private LecturerModelWithCommand _createdLecturerModel;
        public LecturerModelWithCommand CreatedLecturerModel
        {
            get { return _createdLecturerModel; }
            set
            {
                SetProperty(ref _createdLecturerModel, value);
            }
        }


        public QuanLiGiangVienViewModel()
            {
            Init();
            Users = new ObservableCollection<LecturerModel>()
            {
                new LecturerModel() { FirstName = "Nguyễn", LastName = "Văn A", LecturerCode = "16520792", GioiTinhBool = true, AcademicRankEnum = Enums.AcademicRank.Bachelor},
                new LecturerModel() { FirstName = "Lê", LastName = "Ngân Phương", LecturerCode = "16525555", GioiTinhBool = false, AcademicRankEnum = Enums.AcademicRank.Engineer}
            };
            }
        private LecturersApi LecturersApi;
        public QuanLiGiangVienViewModel(UICallback callback)
        {
            Init();
            LoadData(callback);
        }
        private void Init()
        {
            lecturersApi = new LecturersApi();
            CreatedLecturerModel = new LecturerModelWithCommand();
        }


        private async void LoadData(UICallback callback)
        {
            var result = await lecturersApi.ApiLecturersGetAsync();
            Users = new ObservableCollection<LecturerModel>(result.Select(LecturerModel.CreateFrom).ToList());

            callback.Execute();
        }
    }
   
}
