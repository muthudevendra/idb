using MahApps.Metro.Controls;
using MahApps.Metro.Controls.Dialogs;
using System;
using System.Collections.Generic;
using System.Data;
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
    /// Interaction logic for Purchase.xaml
    /// </summary>
    public partial class Purchase : MetroWindow
    {
        public String purchaseId { get; set; }
        public String itemName { get; set; }
        public String supplierName { get; set; }
        public int salesPrice { get; set; }
        public DateTime date { get; set; }
        public int quantity { get; set; }
        public int purchasePrice { get; set; }

        HandleDatabase handleDatabase = new HandleDatabase();
        PurchaseData purchase = new PurchaseData();
        DataTable dt;
        int totalPrice;
        int totalItems;
        Validation val;
        public Purchase()
        {
            InitializeComponent();
            DataContext = this;
            List<String> supplierNameList = handleDatabase.getNameListforPurchases("supplier");
            List<String> itemNameList = handleDatabase.getNameListforPurchases("item");
            SupplierName.ItemsSource = supplierNameList;
            ItemName.ItemsSource = itemNameList;

            dt = new DataTable();
            dt.Columns.Add("purchaseID", typeof(String));
            dt.Columns.Add("itemName", typeof(String));
            dt.Columns.Add("quantity", typeof(String));
            dt.Columns.Add("purchasePrice", typeof(String));
            dt.Columns.Add("salePrice", typeof(String));
        }

        private async void addItemButton_Click(object sender, RoutedEventArgs e)
        {
            val = new Validation();
            if (val.isEmpty(purchaseId) || val.isEmpty(salesPrice.ToString()) || val.isEmpty(supplierName) || val.isEmpty(itemName) ||
                val.isEmpty(date.ToString()) || val.isEmpty(quantity.ToString()) || val.isEmpty(purchasePrice.ToString()))
            {
                await this.ShowMessageAsync("Error", "Data Cannot be Empty", MessageDialogStyle.Affirmative);
            }
            else
            {
                DataRow workRow;
                workRow = dt.NewRow();
                workRow[0] = PurchaseInvoiceID.Text;
                workRow[1] = ItemName.Text;
                workRow[2] = Quantity.Text;
                workRow[3] = PurchasePrice.Text;
                workRow[4] = SalePrice.Text;
                dt.Rows.Add(workRow);

                NewPurchaseGrid.Items.Add(new { name = ItemName.Text, quantity = Quantity.Text, purchasePrice = PurchasePrice.Text, salePrice = SalePrice.Text });
                totalPrice = totalPrice + Convert.ToInt32(PurchasePrice.Text);
                totalItems = NewPurchaseGrid.Items.Count;
                TotalPurchaseItems.Text = totalItems.ToString();
                TotalPurchasePrice.Text = totalPrice.ToString();

                ItemName.Text = "";
                Quantity.Text = "";
                SalePrice.Text = "";
                PurchasePrice.Text = "";
            }
        }

        private async void saveButton_Click(object sender, RoutedEventArgs e)
        {
            purchase.PurchaseDate = PurchaseDate.SelectedDate.Value;
            purchase.SupplierName = SupplierName.SelectedItem.ToString();
            purchase.InvoiceID = PurchaseInvoiceID.Text;
            purchase.TotalPrice = Convert.ToInt32(TotalPurchasePrice.Text);
            purchase.TotalItems = Convert.ToInt32(TotalPurchaseItems.Text);
            handleDatabase.executePurchaseMaster(purchase);
            try
            {
                int affectedLines = 0;
                affectedLines = handleDatabase.executePurchaseDetails(dt);
                affectedLines += handleDatabase.updatePurchaseStockDetails(dt, purchase);
                if (affectedLines > 0)
                {
                    await this.ShowMessageAsync("Successfull", "New Purchase have been Successfully Entered", MessageDialogStyle.Affirmative);
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
            dt.Clear();
            PurchaseInvoiceID.Text = "";
            Quantity.Text = "";
            SalePrice.Text = "";
            PurchasePrice.Text = "";
            TotalPurchaseItems.Text = "";
            TotalPurchasePrice.Text = "";
        }

        private void back_Click(object sender, RoutedEventArgs e)
        {
            MainMenu mainMenu = new MainMenu();
            mainMenu.Show();
            this.Close();
        }

        private void clearButton_Click(object sender, RoutedEventArgs e)
        {
            dt.Clear();
            PurchaseInvoiceID.Text = "";
            ItemName.SelectedIndex=0;
            SupplierName.SelectedIndex = 0;
            Quantity.Text = "";
            SalePrice.Text = "";
            PurchasePrice.Text = "";
            TotalPurchaseItems.Text = "";
            TotalPurchasePrice.Text = "";
        }
    }
}
