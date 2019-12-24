using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using App_Desktop.Model.Class;

namespace App_Desktop.ViewModels
{
    public class TestManagerViewModel
    {
        public TestManagerViewModel()
        {
            TestItemModels = new ObservableCollection<TestItemModel>()
            {
                new TestItemModel(0,"Test1", DateTime.Now, DateTime.Now),
                new TestItemModel(1,"Test2", DateTime.Now, DateTime.Now),
                new TestItemModel(2,"Test3", DateTime.Now, null),
                new TestItemModel(3,"Test4", DateTime.Now, null),
            };
        }

        public ObservableCollection<TestItemModel> TestItemModels { get; set; }
    }
}
