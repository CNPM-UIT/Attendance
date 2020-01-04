using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using App_Desktop.Model.Class;
using App_Desktop.Views;
using Prism.Commands;

namespace App_Desktop.ViewModels
{
    public class TestManagerViewModel
    {
        public ObservableCollection<int> NumberOfQuestions { get; set; }
        public int SelectedNumberOfQuestion { get; set; }
        public DelegateCommand CreateTestCommand { get; set; }
        public TestManagerViewModel()
        {
            TestItemModels = new ObservableCollection<TestItemModel>()
            {
                new TestItemModel(0,"Test1", DateTime.Now, DateTime.Now, new TimeSpan(0,0,45,0)),
                new TestItemModel(1,"Test2", DateTime.Now, DateTime.Now,new TimeSpan(0,0,45,0)),
                new TestItemModel(2,"Test3", DateTime.Now, null,new TimeSpan(0,0,45,0)),
                new TestItemModel(3,"Test4", DateTime.Now, null,new TimeSpan(0,0,45,0)),
            };
            NumberOfQuestions = new ObservableCollection<int>()
            {
                5,10,25,40,50,100
            };
            SelectedNumberOfQuestion = NumberOfQuestions[0];
            CreateTestCommand = new DelegateCommand(CreateTest);
        }

        public void CreateTest()
        {
            CreateUpdateTestViewModel vm = new CreateUpdateTestViewModel(SelectedNumberOfQuestion);
            CreateUpdateTest v = new CreateUpdateTest(){DataContext = vm};
            v.Show();
        }
        public ObservableCollection<TestItemModel> TestItemModels { get; set; }
    }
}
