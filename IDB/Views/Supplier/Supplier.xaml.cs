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
    /// Interaction logic for Supplier.xaml
    /// </summary>
    public partial class Supplier : MetroWindow
    {
        public String supplierName { get; set; }
        public String addressLine1 { get; set; }
        public String addressLine2 { get; set; }
        public int mobileContact { get; set; }
        public int homeContact { get; set; }
        public String companyName { get; set; }

        SupplierData supplier = new SupplierData();
        HandleDatabase handleDatabase = new HandleDatabase();
        Validation val;
        public Supplier()
        {
            InitializeComponent();
            DataContext = this;
        }

        private async void saveButton_Click(object sender, RoutedEventArgs e)
        {
            val = new Validation();
            if (val.isEmpty(supplierName) || val.isEmpty(companyName) || val.isEmpty(addressLine1)|| val.isEmpty(addressLine2)
                || val.isEmpty(mobileContact.ToString()) || val.isEmpty(homeContact.ToString()))       
            {
                await this.ShowMessageAsync("Error", "Data Cannot be Empty", MessageDialogStyle.Affirmative);
            }
            else
            {
                int affectedLines = 0;
                supplier.Suppliername = SupplierName.Text;
                supplier.Address = Address1.Text + ' ' + Address2.Text + ' ' + Address3.Text;
                supplier.MobileContact = Convert.ToInt32(MobileContact.Text);
                supplier.HomeContact = Convert.ToInt32(HomeContact.Text);
                supplier.CompanyName = CompanyName.Text;
                try
                {
                    handleDatabase = new HandleDatabase();
                    affectedLines = handleDatabase.executeSupplierEntry(supplier);

                    if (affectedLines > 0)
                    {
                        await this.ShowMessageAsync("Successfull", "New Supplier have been Successfully Entered", MessageDialogStyle.Affirmative);
                        SupplierName.Text = "";
                        Address1.Text = "";
                        Address2.Text = "";
                        Address3.Text = "";
                        MobileContact.Text = "";
                        HomeContact.Text = "";
                        CompanyName.Text = "";
                    }
                    else
                    {
                        await this.ShowMessageAsync("Error", "Sorry Can not add, Please Try again", MessageDialogStyle.Affirmative);
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
            SupplierName.Text = "";
            Address1.Text = "";
            Address2.Text = ""; 
            Address3.Text="";
            MobileContact.Text="";
            HomeContact.Text="";
            CompanyName.Text="";
        }

        private void back_Click(object sender, RoutedEventArgs e)
        {
            MainMenu mainMenu = new MainMenu();
            mainMenu.Show();
            this.Close();
        }
    }
}
