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
    /// Interaction logic for UpdateSupplier.xaml
    /// </summary>
    public partial class UpdateSupplier : MetroWindow
    {
        public String supplierName { get; set; }
        public String addressLine1 { get; set; }
        public String addressLine2 { get; set; }
        public int mobile { get; set; }
        public int homeContact { get; set; }
        public String companyName { get; set; }

        private String supplierID;
        SupplierData supplier = new SupplierData();
        HandleDatabase handleDatabase;
        Validation val;
        public UpdateSupplier(String supplierID)
        {
            InitializeComponent();
            DataContext = this;

            this.supplierID = supplierID;
            handleDatabase = new HandleDatabase();
            supplier = handleDatabase.getSupplierDetails(supplierID);
        }

        private void back_Click(object sender, RoutedEventArgs e)
        {
            ViewSuppliers viewSuppliers = new ViewSuppliers();
            viewSuppliers.Show();
            this.Close();
        }

        private async void saveButton_Click(object sender, RoutedEventArgs e)
        {
            val = new Validation();
            if (val.isEmpty(supplierName) || val.isEmpty(companyName) || val.isEmpty(addressLine1) || val.isEmpty(addressLine2)
                || val.isEmpty(mobile.ToString()) || val.isEmpty(homeContact.ToString()))
            {
                await this.ShowMessageAsync("Error", "Data Cannot be Empty", MessageDialogStyle.Affirmative);
            }
            else
            {
                int affectedLines = 0;
                supplier = new SupplierData();

                supplier.Suppliername = SupplierName.Text;
                supplier.CompanyName = CompanyName.Text;
                supplier.Address = Address1.Text + ' ' + Address2.Text + ' ' + Address3.Text;
                supplier.MobileContact = Convert.ToInt32(MobileContact.Text);
                supplier.HomeContact = Convert.ToInt32(HomeContact.Text);
                supplier.CompanyName = CompanyName.Text;

                try
                {
                    handleDatabase = new HandleDatabase();
                    affectedLines = handleDatabase.executeSupplierUpdate(supplier, supplierID);

                    if (affectedLines > 0)
                    {
                        await this.ShowMessageAsync("Successfull", "Supplier details have been Successfully Updates", MessageDialogStyle.Affirmative);
                        ViewSuppliers view = new ViewSuppliers();
                        view.Show();
                        this.Close();
                    }
                    else
                    {
                        await this.ShowMessageAsync("Error", "Sorry Can not Update, Please Try again", MessageDialogStyle.Affirmative);
                    }
                }
                catch (SqlException sqlException)
                {
                    Console.WriteLine(sqlException);
                }
            }
        }

        private void MetroWindow_Loaded(object sender, RoutedEventArgs e)
        {
            if (supplierID != null)
            {
                String[] addressParts = supplier.Address.Split();
                SupplierID.Text = supplierID;
                SupplierName.Text = supplier.Suppliername;
                CompanyName.Text = supplier.CompanyName;
                Address1.Text = addressParts[0];
                Address2.Text = addressParts[1];
                Address3.Text = addressParts[2];
                MobileContact.Text = supplier.MobileContact.ToString();
                HomeContact.Text = supplier.HomeContact.ToString();
            }
        }
    }
}
