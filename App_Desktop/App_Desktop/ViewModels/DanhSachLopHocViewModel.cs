using App_Desktop.Model;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using App_Desktop.Model.Class;
using IO.Swagger.Api;
using Prism.Mvvm;

namespace App_Desktop.ViewModels
{
    class DanhSachLopHocViewModel : BindableBase
    {
        public ObservableCollection<ClassModel> _objClass;
        public ObservableCollection<ClassModel> ObjClass
        {
            get { return _objClass; }
            set { SetProperty(ref _objClass, value); }
        }
        public DanhSachLopHocViewModel()
        {
            ObjClass = new ObservableCollection<ClassModel>()
            {
                new ClassModel() { ClassCode = "J21.K11", Name = "Nhập môn lập trình", StartDate = new DateTime(2000, 9, 2), EndDate = new DateTime(2001, 10,10)},
                new ClassModel() { ClassCode = "H22.K13", Name = "Nhập môn giải tích", StartDate = new DateTime(2000, 9, 2), EndDate = new DateTime(2001, 10,10) },
            };
        }
        public DanhSachLopHocViewModel(UICallback callback, int? semeterId = null)
        {
            Init();
            LoadData(callback, semeterId);
        }
        private CoursesApi coursesApi;
        private SemestersApi semesterApi;
        private async void LoadData(UICallback callback, int? semeterId)
        {
            var result = await coursesApi.ApiCoursesGetAsync();
            if (semeterId != null)
            {
                result = result.Where(classDTO => classDTO.SemesterId == semeterId.Value).ToList();
            }
            var task = result.Select(async classDTO =>
            {
                var semeter = await semesterApi.ApiSemestersIdGetAsync(classDTO.SemesterId);
                return ClassModel.CreateFrom(classDTO, SemesterModel.CreateFrom(semeter));
            }).ToList();
            ObjClass = new ObservableCollection<ClassModel>(await Task.WhenAll(task));

            callback.Execute();
        }
        private void Init()
        {
            coursesApi = new CoursesApi();
            semesterApi = new SemestersApi();
        }


    }
}
