using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using App_Desktop.Model;
using App_Desktop.Model.Class;
using App_Desktop.Model.Person;
using App_Desktop.Views;

namespace App_Desktop
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {

        private List<StudentDTO> users = new List<StudentDTO>();
        public MainWindow()
        {
            InitializeComponent();

            List<CourseDTO> courses = new List<CourseDTO>();
            courses.Add(new CourseDTO()
            {
                Id = 1,
                Code = "SE100",
                Name = "OOD",
                StartDate = "1/8/2019",
                EndDate = "31/12/2019",
                SemesterId = 1
            });
            courses.Add(new CourseDTO()
            {
                Id = 2,
                Code = "SE101",
                Name = "C++",
                StartDate = "1/8/2019",
                EndDate = "31/12/2019",
                SemesterId = 2
            });
            courses.Add(new CourseDTO()
            {
                Id = 2,
                Code = "SE102",
                Name = "C#",
                StartDate = "1/8/2019",
                EndDate = "31/12/2019",
                SemesterId = 3
            });
            lvDataBinding.ItemsSource = courses;

            List<LessionDTO> lessions = new List<LessionDTO>();
            lessions.Add(new LessionDTO() 
            {
                Id = 1,
                Time = "6/8/2019",
                LecturerId = 1,
                CourseId = 1
            });
            lessions.Add(new LessionDTO()
            {
                Id = 2,
                Time = "13/8/2019",
                LecturerId = 1,
                CourseId = 1
            });
            lessions.Add(new LessionDTO()
            {
                Id = 3,
                Time = "20/8/2019",
                LecturerId = 1,
                CourseId = 1
            });
            lvBindingLession.ItemsSource = lessions;



            //diemDanhRadioButton.IsChecked = true;
            initGrid();
        }

        private void DiemDanh()
        {
            //users = new List<StudentModel>();
            //users.Add(new StudentModel() { Id = 4, Name = "John Doe", StudentCode = "16520111", });
            //users.Add(new StudentModel() { Id = 5, Name = "Jane Doe", StudentCode = "16520113" });
            //users.Add(new StudentModel() { Id = 6, Name = "Sammy Doe", StudentCode = "16520114" });
            //Quanlidiemdanh.ItemsSource = users;
        }
        private void Button_Click(object sender, RoutedEventArgs e)
        {
            // textbox.Text = "Hello Ngan!"; 
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {

        }

        private void TextBox_TextChanged(object sender, TextChangedEventArgs e)
        {

        }

        private void ComboBox_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {

        }

        private void Button_Click_2(object sender, RoutedEventArgs e)
        {

        }

        private void ListView_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {

        }
        private void Button_Click_QuanLiBuoiHoc(object sender, RoutedEventArgs e)
        {
            DanhSachBuoiHoc.Visibility = Visibility.Visible;
            DanhSachQuanLiThongKe.Visibility = Visibility.Hidden;
            DanhSachTaiLieu.Visibility = Visibility.Hidden;
        }

        private void Button_Click_QuanLiThongKe(object sender, RoutedEventArgs e)
        {
            DanhSachQuanLiThongKe.Visibility = Visibility.Visible;
            DanhSachBuoiHoc.Visibility = Visibility.Hidden;
            DanhSachTaiLieu.Visibility = Visibility.Hidden;
        }

        private void Button_Click_QuanLiTaiLieu(object sender, RoutedEventArgs e)
        {
            DanhSachTaiLieu.Visibility = Visibility.Visible;
            DanhSachBuoiHoc.Visibility = Visibility.Hidden;
            DanhSachQuanLiThongKe.Visibility = Visibility.Hidden;

        }

        private void ComboBox_SelectionChanged_1(object sender, SelectionChangedEventArgs e)
        {

        }

        private void BasicRatingBar_ValueChanged(object sender, SelectionChangedEventArgs e)
        {

        }

        private void RadioButton_Checked_DanhGia(object sender, RoutedEventArgs e)
        {
            Grid_QuanLiDanhGia.Visibility = Visibility.Visible;
            Grid_QuanLiDiemDanh.Visibility = Visibility.Hidden;
            Grid_QuanLiKiemTra.Visibility = Visibility.Hidden;
            Grid_QuanLiThaoLuan.Visibility = Visibility.Hidden;
        }

        private void RadioButton_Checked_ThaoLuan(object sender, RoutedEventArgs e)
        {
            Grid_QuanLiThaoLuan.Visibility = Visibility.Visible;
            Grid_QuanLiDiemDanh.Visibility = Visibility.Hidden;
            Grid_QuanLiKiemTra.Visibility = Visibility.Hidden;
            Grid_QuanLiDanhGia.Visibility = Visibility.Hidden;
        }

        private void RadioButton_Checked_KiemTra(object sender, RoutedEventArgs e)
        {
            Grid_QuanLiKiemTra.Visibility = Visibility.Visible;
            Grid_QuanLiDiemDanh.Visibility = Visibility.Hidden;
            Grid_QuanLiThaoLuan.Visibility = Visibility.Hidden;
            Grid_QuanLiDanhGia.Visibility = Visibility.Hidden;
            Grid_QuanLiKiemTra.Children.Clear();
            Grid_QuanLiKiemTra.Children.Add(new TestManager());

        }

        private void RadioButton_Checked_DiemDanh(object sender, RoutedEventArgs e)
        {
            Grid_QuanLiDiemDanh.Visibility = Visibility.Visible;
            Grid_QuanLiKiemTra.Visibility = Visibility.Hidden;
            Grid_QuanLiThaoLuan.Visibility = Visibility.Hidden;
            Grid_QuanLiDanhGia.Visibility = Visibility.Hidden;
            Grid_QuanLiDiemDanh.Children.Clear();
            Grid_QuanLiDiemDanh.Children.Add(new DiemDanh());
            //DiemDanh();


        }
        private void Checkbox_DiemDanh(object sender, RoutedEventArgs e)
        {
        //    if(Checkbox_AllDiemdanh.IsChecked==true)
        //    {

        //        int i = 0;
        //        for(i = 0; i<users.Count;i++)
        //        {
        //            users[i].DiHoc = true;
        //        }
        //    }
        //    else
        //    {
        //        int i = 0;
        //        for (i = 0; i < users.Count; i++)
        //        {
        //            users[i].DiHoc = false;
        //        }
        //    }
        }

        private void DataGrid_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            
        }

        private void ComboBox_SelectionChanged_2(object sender, SelectionChangedEventArgs e)
        {

        }


        public DataTable GetDetails()
        {
            // Some Codes here
            DataTable dt = new DataTable();
            dt.Columns.Add("ID");
            dt.Columns.Add("MSSV");
            dt.Columns.Add("Name");
            int sid = 0;
            DataRow row = dt.NewRow();
            row["ID"] = sid;
            sid++;
            row["MSSV"] = "1620792";
            row["Name"] = "Lê Thị Phương Ngân";
            dt.Rows.Add(row);
            row = dt.NewRow();
            row["id"] = sid;
            sid++;
            row["MSSV"] = "16207215";
            row["Name"] = "Lê Thị Ngân Phương";
            dt.Rows.Add(row);

            return dt;
        }

        private void initGrid()
        {
            DataTable dt = GetDetails();
            DiemDanhGridView.DataContext = dt.AsDataView();
        }
    }
}
