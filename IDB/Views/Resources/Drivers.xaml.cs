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
    /// Interaction logic for Drivers.xaml
    /// </summary>
    public partial class Drivers : MetroWindow
    {
        public String firstName { get; set; }
        public String lastName { get; set; }
        public String addressLine1 { get; set; }
        public String addressLine2 { get; set; }
        public String nic { get; set; }
        public String sellingCenter { get; set; }
        public int mobileNumber { get; set; }
        public int homeContact { get; set; }

        DriverData driver = new DriverData();
        HandleDatabase handleDatabase = new HandleDatabase();
        Validation val;
        public Drivers()
        {
            InitializeComponent();
            DataContext = this;
            List<String> sellingCenterNameList = new HandleDatabase().getListDetailsforSales("sellingCenter");
            SellingCenter.ItemsSource = sellingCenterNameList;
        }

        private void back_Click(object sender, RoutedEventArgs e)
        {
            MainMenu mainMenu = new MainMenu();
            mainMenu.Show();
            this.Close();
        }

        private void clearButton_Click(object sender, RoutedEventArgs e)
        {
            clearFields();
        }

        private async void saveButton_Click(object sender, RoutedEventArgs e)
        {
            val = new Validation();
            if (val.isEmpty(firstName) || val.isEmpty(lastName) || val.isEmpty(addressLine1) || val.isEmpty(addressLine2)
                || val.isEmpty(sellingCenter) || val.isEmpty(nic) || val.isEmpty(mobileNumber.ToString()) || val.isEmpty(homeContact.ToString()))
            {
                await this.ShowMessageAsync("Error", "Data Cannot be Empty", MessageDialogStyle.Affirmative);
            }
            else if (val.isNumeric(mobileNumber.ToString()) || val.isNumeric(homeContact.ToString()))
            {
                await this.ShowMessageAsync("Error", "Contact Numbers Should be Numeric", MessageDialogStyle.Affirmative);
            }
            else
            {
                int affectedLines = 0;
                driver.FirstName = FirstName.Text;
                driver.LastName = LastName.Text;
                driver.Address = Address1.Text + ' ' + Address2.Text + ' ' + Address3.Text;
                driver.NIC = NIC.Text;
                driver.Mobile = Convert.ToInt32(Mobile.Text);
                driver.HomeContact = Convert.ToInt32(HomeContact.Text);
                driver.SalesCenter = SellingCenter.SelectedValue.ToString();
                try
                {
                    handleDatabase = new HandleDatabase();
                    affectedLines = handleDatabase.executeDriverEntry(driver);

                    if (affectedLines > 0)
                    {
                        await this.ShowMessageAsync("Successfull", "New Entry have been Successfully Registered", MessageDialogStyle.Affirmative);
                        FirstName.Text = "";
                        LastName.Text = "";
                        Address1.Text = "";
                        Address2.Text = "";
                        Address3.Text = "";
                        NIC.Text = "";
                        Mobile.Text = "";
                        HomeContact.Text = "";
                    }
                    else
                    {
                        await this.ShowMessageAsync("Error", "Sorry Can not Proceed, Please Try again", MessageDialogStyle.Affirmative);
                    }
                    clearFields();
                }
                catch (SqlException sqlException)
                {
                    Console.WriteLine(sqlException);
                }
            }
           
        }
        public void clearFields()
        {
            FirstName.Text = "";
            LastName.Text = "";
            Address1.Text = "";
            Address2.Text = "";
            Address3.Text = "";
            NIC.Text = "";
            Mobile.Text = "";
            HomeContact.Text = "";
        }

    }
}
