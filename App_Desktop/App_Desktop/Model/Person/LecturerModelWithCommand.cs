using IO.Swagger.Api;
using IO.Swagger.Model;
using Prism.Commands;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace App_Desktop.Model.Person
{
    public class LecturerModelWithCommand : LecturerModel
    {
        private LecturersApi lecturersApi = new LecturersApi();
        public List<String> ComboBoxGenderSelect { get; set; }

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

        public LecturerModelWithCommand()
        {
            ComboBoxGenderSelect = new List<string>()
            {
                "Nam","Nữ"
            };
            SelectedGender = ComboBoxGenderSelect[0];
            CreateCommand = new DelegateCommand(Create);
        }

        private async void Create()
        {
            LecturerDTO createDto = this.CreateTo();
            LecturerDTO result = await lecturersApi.ApiLecturersPostAsync(createDto);
            if (result != null)
            {
                MessageBox.Show("Success!");
            }
            else
            {
                MessageBox.Show("Failure");
            }
        }

        private LecturerDTO CreateTo()
        {
            throw new NotImplementedException();
        }
    }
}

