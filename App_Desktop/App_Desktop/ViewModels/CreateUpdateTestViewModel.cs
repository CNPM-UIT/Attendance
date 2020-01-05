using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using App_Desktop.Model.Class;

namespace App_Desktop.ViewModels
{
    public class CreateUpdateTestViewModel
    {
        private TestItemDetailModel test;

        public CreateUpdateTestViewModel(int numberOfQuestion)
        {
            test = new TestItemDetailModel(numberOfQuestion, null);
        }
        public CreateUpdateTestViewModel()
        {
            test = new TestItemDetailModel(10, null);
        }
        public TestItemDetailModel Test
        {
            get => test;
            set => test = value;
        }
    }
}
