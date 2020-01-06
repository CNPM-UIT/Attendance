using App_Desktop.Model.Class;
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
    class QuanLiHocKyViewModel : BindableBase
    {
        private SemestersApi api;
        public ObservableCollection<SemesterModel> _HK;
        public ObservableCollection<SemesterModel> HK
        {
            get { return _HK; }
            set { SetProperty(ref _HK, value); }
        }

        public QuanLiHocKyViewModel()
        {
            Init();
            HK = new ObservableCollection<SemesterModel>()
            {
                new SemesterModel() {Name="HK1 2019" },
                new SemesterModel() {Name = "HK2 2019"}
            };
        }
        public QuanLiHocKyViewModel(UICallback callback)
        {
            Init();
            LoadData(callback);
        }
        private async void LoadData(UICallback callback)
        {
            var result = await api.ApiSemestersGetAsync() ;
            HK = new ObservableCollection<SemesterModel>(result.Select(SemesterModel.CreateFrom).ToList());

            callback.Execute();
        }
        private void Init()
        {
            api = new SemestersApi();
        }
    }
}
