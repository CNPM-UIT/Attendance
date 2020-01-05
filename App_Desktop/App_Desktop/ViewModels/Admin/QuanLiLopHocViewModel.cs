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

namespace App_Desktop.ViewModels.Admin
{
    class QuanLiLopHocViewModel :BindableBase
    {
        public ObservableCollection<ClassModel> _class;
        public ObservableCollection<ClassModel> Class
        {
            get { return _class; }
            set { SetProperty(ref _class, value); }
        }

        private CoursesApi coursesApi;
        private SemestersApi semesterApi;

        public QuanLiLopHocViewModel()
        {
            Class = new ObservableCollection<ClassModel>()
            {
                new ClassModel() {ClassCode = "J21.K11", Name = "Nhập môn lập trình" },
                new ClassModel() {ClassCode = "H22.K13", Name = "Nhập môn giải tích" }
            };
        }
        public QuanLiLopHocViewModel(UICallback callback)
        {
            Init();
            LoadData(callback);
        }
        private async void LoadData(UICallback callback)
        {
            var result = await coursesApi.ApiCoursesGetAsync();
            var task = result.Select(async k =>
            {
                var semeter = await semesterApi.ApiSemestersIdGetAsync(k.SemesterId);
                return ClassModel.CreateFrom(k, SemesterModel.CreateFrom(semeter));
            }).ToList();
            Class = new ObservableCollection<ClassModel>(await Task.WhenAll(task));

            callback.Execute();
        }
        private void Init()
        {
            coursesApi = new CoursesApi();
            semesterApi = new SemestersApi();
        }
    }
}
