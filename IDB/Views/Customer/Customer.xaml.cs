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
using System.Windows.Shapes;

namespace IDB
{
    /// <summary>
    /// Interaction logic for Customer.xaml
    /// </summary>
    public partial class Customer : MetroWindow
    {
        public String firstName { get; set; }
        public String lastName { get; set; }
        public String addressLine1 { get; set; }
        public String addressLine2 { get; set; }
        public String addressLine3 { get; set; }
        public String email { get; set; }
        public int mobileNumber { get; set; }
        public int fixedNumber { get; set; }

        HandleDatabase handleDatabase;
        CustomerData customerData;
        Validation val;
        public Customer()
        {
            InitializeComponent();
            this.DataContext = this;
        }

        private void back_Click(object sender, RoutedEventArgs e)
        {
            MainMenu main = new MainMenu();
            main.Show();
            this.Close();
        }

        private async void saveButton_Click(object sender, RoutedEventArgs e)
        {
            val = new Validation();
            if (val.isEmpty(firstName) || val.isEmpty(lastName)|| val.isEmpty(addressLine1)|| val.isEmpty(addressLine2)
                || val.isEmpty(addressLine3) || val.isEmpty(email) || val.isEmpty(mobileNumber.ToString()) || val.isEmpty(FixedLine.ToString()))
            {
                await this.ShowMessageAsync("Error", "Input Data Cannot Be Empty", MessageDialogStyle.Affirmative);
            }
            else if (val.isNumeric(mobileNumber.ToString()) || val.isNumeric(FixedLine.ToString()))
            {
                await this.ShowMessageAsync("Error", "Contact Numbers Should Be Numeric", MessageDialogStyle.Affirmative);
            }
            else
            {
                int affectedLines = 0;
                customerData = new CustomerData();

                customerData.setFirstName(firstName);
                customerData.setLastName(lastName);
                customerData.setAddress(addressLine1, addressLine2, addressLine3);
                customerData.setEmail(email);
                customerData.setMobileNumer(mobileNumber);
                customerData.setFixedNumber(fixedNumber);

                try
                {
                    handleDatabase = new HandleDatabase();
                    affectedLines = handleDatabase.executeCustomerEntry(customerData);

                    if (affectedLines > 0)
                    {
                        await this.ShowMessageAsync("Successfull", "Customer have been Successfully Entered", MessageDialogStyle.Affirmative);
                        FirstName.Text = "";
                        LastName.Text = "";
                        Address1.Text = "";
                        Address2.Text = "";
                        Address3.Text = "";
                        Email.Text = "";
                        FixedLine.Text = "";
                        Mobile.Text = "";
                    }
                    else
                    {
                        await this.ShowMessageAsync("Error", "Sorry Can not Create the Profile, Please Try again", MessageDialogStyle.Affirmative);
                    }
                }
                catch (SqlException sqlException)
                {
                    Console.WriteLine(sqlException);
                }
            }
        }

        private void clearButton_Click(object sender, RoutedEventArgs e)
        {
            FirstName.Text = "";
            LastName.Text = "";
            Address1.Text = "";
            Address2.Text = "";
            Address3.Text = "";
            Email.Text = "";
            FixedLine.Text = "";
            Mobile.Text = "";
        }
    }
}
