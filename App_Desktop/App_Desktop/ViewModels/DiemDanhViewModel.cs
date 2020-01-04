using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using App_Desktop.Model.Class;

using App_Desktop.Model.Person;


namespace App_Desktop.ViewModels
{
    public class DiemDanhViewModel
    {
        public ObservableCollection<DiemDanhModel> users { get; set; }
        public DiemDanhViewModel()
        {
            //var student = new StudentModel() { Name = "Tuan", StudentCode = "16520", DiHoc = false };
            users = new ObservableCollection<DiemDanhModel>()
            {
                new DiemDanhModel() { Stt = 1, Name = "Ngan", MSSV = "123456", StatusDiHoc = false, StatusVang = false },
                new DiemDanhModel() { Stt = 2, Name = "NganLe", MSSV = "456789", StatusDiHoc = true, StatusVang = false},
                //new DiemDanhModel(student)
                //new StudentModel() { Id = 4, Name = "John Doe", StudentCode = "16520111", },
                //new StudentModel() { Id = 5, Name = "Jane Doe", StudentCode = "16520113" },
                //new StudentModel() { Id = 6, Name = "Sammy Doe", StudentCode = "16520114" }
            };
        }
    }

    public class DiemDanhModel
    {
        public string Name { get; set; }
        public string MSSV { get; set; }

        public int Stt { get; set; }
        
        public bool StatusDiHoc { get; set; }

        public bool StatusVang { get; set; }
        
        public DiemDanhModel()
        {

        }

        public DiemDanhModel(StudentModel st)
        {
            this.Name = st.Name;
            this.Stt = st.Id;
            this.MSSV = st.StudentCode;
            this.StatusVang = false;
        }
    }
    

}
