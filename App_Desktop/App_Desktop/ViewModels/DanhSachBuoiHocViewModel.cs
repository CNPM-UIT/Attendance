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

namespace App_Desktop.ViewModels
{
    class DanhSachBuoiHocViewModel : BindableBase
    {
        private ObservableCollection<LessionModel> _objLession;
        public ObservableCollection<LessionModel> ObjLession
        {
            get { return _objLession; }
            set { SetProperty(ref _objLession, value); }
        }

        public DanhSachBuoiHocViewModel()
        {
            Init();
            ObjLession = new ObservableCollection<LessionModel>()
            {
                new LessionModel() { Id = 1, Time = new DateTime(2000, 9, 2)},
                new LessionModel() { Id = 2, Time = new DateTime(2000, 9, 2) },
            };
        }

        public DanhSachBuoiHocViewModel(UICallback callback, ClassModel selectedClass)
        {
            Init();
            LoadData(callback, selectedClass);
        }

        private LessionsApi lessionsApi;
        private LecturersApi lecturerApi;

        private void Init()
        {
            lessionsApi = new LessionsApi();
            lecturerApi = new LecturersApi();
        }

        private async void LoadData(UICallback callback, ClassModel selectedClass)
        {
            var result = await lessionsApi.ApiLessionsGetAsync();
            result = result.FindAll(k => k.CourseId.Value == System.Convert.ToInt32(selectedClass.Id));
            var task = result.Select(async k =>
            {
                var lecturer = await lecturerApi.ApiLecturersIdGetAsync(k.LecturerId.Value);
                return LessionModel.CreateFrom(k, LecturerModel.CreateFrom(lecturer));
            }).ToList();
            ObjLession = new ObservableCollection<LessionModel>(await Task.WhenAll(task));

        }
    }
}
