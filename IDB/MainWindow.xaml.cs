using MahApps.Metro.Controls;
using MahApps.Metro.Controls.Dialogs;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
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

namespace IDB
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : MetroWindow
    {
        public String userNameLogin { get; set; }
        public String userNameNew { get; set; }
        public String accountType { get; set; }

        private bool validUser = false;

        private HandleDatabase handleDatabase;
        public MainWindow()
        {
            InitializeComponent();
            DataContext = this;
        }

        private async void loginButton_Click(object sender, RoutedEventArgs e)
        {
            String password = PasswordLogin.Password;
            handleDatabase = new HandleDatabase();
            validUser = handleDatabase.getUser(userNameLogin, password);
            if (validUser)
            {
                await this.ShowMessageAsync("Welcome", "Welcome to IDB", MessageDialogStyle.Affirmative);
                MainMenu main = new MainMenu();
                main.Show();
                this.Close();
            }
            else
            {
                await this.ShowMessageAsync("Error", "Error, please try again", MessageDialogStyle.Affirmative);
            }
        }

        private async void signUpButton_Click(object sender, RoutedEventArgs e)
        {
            String password = PasswordNew.Password;
            String confirmPassword = ConfirmPasswordNew.Password;
            handleDatabase = new HandleDatabase();
            
            if (Employee.IsChecked == true)
            {
                accountType = "Employee";
            }
            else
            {
                accountType = "Admin";
            }
            try
            {
                int affectedLines = handleDatabase.createUser(userNameNew, password, accountType);

                if (affectedLines > 0)
                {
                    await this.ShowMessageAsync("Profile Created", "Your Profile has been Successfully Created", MessageDialogStyle.Affirmative);
                    UserNameNew.Text = "";
                    PasswordNew.Password = "";
                    ConfirmPasswordNew.Password = "";
                    SignControl.SelectedIndex = 0;
                }
                else
                {
                    await this.ShowMessageAsync("Profile Not Created", "Sorry Can not Create the Profile, Please Try again", MessageDialogStyle.Affirmative);
                    UserNameNew.Text = "";
                    PasswordNew.Password = "";
                    ConfirmPasswordNew.Password = "";
                }
            }
            catch (SqlException sqlException)
            {
                Console.WriteLine(sqlException);
            }
        }
    }
}
