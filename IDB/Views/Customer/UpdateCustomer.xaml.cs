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
    /// Interaction logic for UpdateCustomer.xaml
    /// </summary>
    public partial class UpdateCustomer : MetroWindow
    {
        public String firstName { get; set; }
        public String lastName { get; set; }
        public String addressLine1 { get; set; }
        public String addressLine2 { get; set; }
        public String addressLine3 { get; set; }
        public String email { get; set; }
        public int mobileContact { get; set; }
        public int homeContact { get; set; }

        private String customerID;
        CustomerData customer = new CustomerData();
        HandleDatabase handleDatabase;
        Validation val;
        public UpdateCustomer(String customerID)
        {
            InitializeComponent();
            DataContext = this;

            this.customerID = customerID;
            handleDatabase = new HandleDatabase();
            customer = handleDatabase.getCustomerDetails(customerID);
        }

        private void back_Click(object sender, RoutedEventArgs e)
        {
            ViewCustomers viewCustomers = new ViewCustomers();
            viewCustomers.Show();
            this.Close();
        }

        private void MetroWindow_Loaded(object sender, RoutedEventArgs e)
        {
            if (customerID != null)
            {
                String[] addressParts = customer.getAddress().Split();
                CustomerID.Text = customerID;
                FirstName.Text = customer.getFirstName();
                LastName.Text = customer.getLastName();
                Address1.Text = addressParts[0];
                Address2.Text = addressParts[1];
                Address3.Text = addressParts[2];
                Email.Text = customer.getEmail();
                MobileContact.Text = customer.getMobileNumber().ToString();
                HomeContact.Text = customer.getFixedNumber().ToString();
            }
        }

        private async void saveButton_Click(object sender, RoutedEventArgs e)
        {
            val = new Validation();
            if (val.isEmpty(firstName) || val.isEmpty(lastName) || val.isEmpty(addressLine1) || val.isEmpty(addressLine2)
                || val.isEmpty(addressLine3) || val.isEmpty(email) || val.isEmpty(mobileContact.ToString()) || val.isEmpty(homeContact.ToString()))
            {
                await this.ShowMessageAsync("Error", "Input Data Cannot Be Empty", MessageDialogStyle.Affirmative);
            }
            else
            {
                int affectedLines = 0;
                customer = new CustomerData();

                customer.setFirstName(FirstName.Text);
                customer.setLastName(LastName.Text);
                customer.setAddress(Address1.Text + ' ' + Address2.Text + ' ' + Address3.Text);
                customer.setEmail(Email.Text);
                customer.setMobileNumer(Convert.ToInt32(MobileContact.Text));
                customer.setFixedNumber(Convert.ToInt32(HomeContact.Text));
                try
                {
                    handleDatabase = new HandleDatabase();
                    affectedLines = handleDatabase.executeCustomerUpdate(customer, customerID);

                    if (affectedLines > 0)
                    {
                        await this.ShowMessageAsync("Successfull", "Customer have been Successfully Updates", MessageDialogStyle.Affirmative);
                        ViewCustomers view = new ViewCustomers();
                        view.Show();
                        this.Close();
                    }
                    else
                    {
                        await this.ShowMessageAsync("Error", "Sorry Can not Update, Please Try again", MessageDialogStyle.Affirmative);
                        ViewCustomers view = new ViewCustomers();
                        view.Show();
                        this.Close();
                    }
                }
                catch (SqlException sqlException)
                {
                    Console.WriteLine(sqlException);
                }
            }           
        }
    }
}
