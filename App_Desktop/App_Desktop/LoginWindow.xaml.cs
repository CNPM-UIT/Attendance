using System;
using System.Collections.Generic;
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
using System.Windows.Shapes;

namespace App_Desktop
{
    /// <summary>
    /// Interaction logic for LoginWindow.xaml
    /// </summary>
    public partial class LoginWindow : Window
    {
        public LoginWindow()
        {
            InitializeComponent();
        }

        private void btn_login_Click(object sender, RoutedEventArgs e)
        {
            if (textBoxEmail.Text != "" && wordBox.Password.Length != 0)
            {
                //DBconnection objconn = new DBconnection();
                //objconn.connection(); //calling connection   

                //SqlCommand com = new SqlCommand("user_Sp_Login", objconn.con);
                //com.CommandType = CommandType.StoredProcedure;
                //com.Parameters.AddWithValue("@UserId", textBox2.Text);
                //com.Parameters.AddWithValue("@word", wordBox1.word);

                //int IsValidUser = Convert.ToInt32(com.ExecuteScalar());
                //if (IsValidUser == 1) //if user found it returns 1  
                //{
                //    Landing obj = new Landing();

                //    MainWindow objmain = new MainWindow();
                //    obj.Show(); //after login Redirect to second window  
                //    objmain.Hide();//after login hide the  Login window  

                //}
                //else
                //{

                //    MessageBox.Show("InValid UserId Or word");

                //}

                //Landing obj = new Landing();

                MainWindow objmain = new MainWindow();
                AdminWindow objadmin = new AdminWindow();
                if(textBoxEmail.Text == "admin")
                {
                    objadmin.Show();
                }
                else
                {
                    objmain.Show(); //after login Redirect to second window
                }
                this.Close();//after login hide the  Login window
                
            }
            else
            {

                MessageBox.Show("UserId and word Is Required");

            }

        }

        private void click_btn_QuenMatKhau(object sender, RoutedEventArgs e)
        {
            MessageBox.Show("Please contact with admin");
        }
    }
}
