using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Data;
using IO.Swagger.Api;
using IO.Swagger.Model;
using Prism.Commands;

namespace App_Desktop.Model.Person
{
    public class StudentModelWithCommand : StudentModel
    {
        public Action RefreshUI { get; set; }
        private StudentsApi studentApi = new StudentsApi();
        public  List<String> ComboBoxGenderSelect { get; set; }

        public String _selectedGender;
        public String SelectedGender
        {
            get { return _selectedGender; }
            set
            {
                _selectedGender = value;
                this.GioiTinhBool = value.Equals(ComboBoxGenderSelect[0]);
            }
        }

        public DelegateCommand CreateCommand { get; set; }
        public DelegateCommand DeleteCommand { get; set; }

        public StudentModelWithCommand()
        {
            ComboBoxGenderSelect = new List<string>()
            {
                "Nam","Nữ"
            };
            SelectedGender = ComboBoxGenderSelect[0];
            CreateCommand = new DelegateCommand(Create);
            DeleteCommand = new DelegateCommand(Delete);
        }

        private async void Create()
        {
            StudentDTO createDto = this.CreateTo(); 
            var result = await studentApi.ApiStudentsPostAsync(createDto);
            if (result != null)
            {
                MessageBox.Show("Success!");
            }
            else
            {
                MessageBox.Show("Failure");
            }

            RefreshUI();
        }

        private async void Delete()
        {
            StudentDTO result = await studentApi.ApiStudentsIdDeleteAsync(this.Id);
            if (result != null)
            {
                MessageBox.Show("Success!");
            }
            else
            {
                MessageBox.Show("Failure");
            }

            RefreshUI();
        }

        public new static StudentModelWithCommand CreateFrom(StudentDTO arg, Action refreshUI)
        {
            return new StudentModelWithCommand()
            {
                Id = arg.Id.Value,
                StudentCode = arg.Code,
                FirstName = arg.FirstName,
                LastName = arg.LastName,
                GioiTinhBool = arg.IsMale.Value,
                RefreshUI = refreshUI
            };
        }
    }
}
