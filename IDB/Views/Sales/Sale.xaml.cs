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
    /// Interaction logic for Sale.xaml
    /// </summary>
    public partial class Sale : MetroWindow
    {
        public String salesId { get; set; }
        public String itemName { get; set; }
        public String sellingCenter { get; set; }
        public String customerName { get; set; }
        public DateTime date { get; set; }
        public Int32 quantity { get; set; }
        public int itemPrice { get; set; }
        SalesData sale = new SalesData();
        HandleDatabase handleDatabase = new HandleDatabase();
        Validation val;
        Int32 totalPriceOfItemCategory = 0;

        Int32 totalPrice = 0;
        int totalItems = 0;
        DataTable dt;
        public Sale()
        {
            InitializeComponent();
            DataContext = this;
            List<String> customerNameList = new HandleDatabase().getListDetailsforSales("customer");
            List<String> sellingCenterNameList = new HandleDatabase().getListDetailsforSales("sellingCenter");
            List<String> itemNameList = new HandleDatabase().getListDetailsforSales("item");
            CustomerName.ItemsSource = customerNameList;
            ItemName.ItemsSource = itemNameList;
            SellingCenter.ItemsSource = sellingCenterNameList;

            dt = new DataTable();
            dt.Columns.Add("salesID", typeof(String));
            dt.Columns.Add("itemName", typeof(String));
            dt.Columns.Add("quantity", typeof(String));
            dt.Columns.Add("purchasePrice", typeof(String));
            dt.Columns.Add("totalPrice", typeof(String));
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
            Quantity.Text = "";
            SalesInvoiceID.Text="";
            SalesDate.SelectedDate = null;
            TotalSalesPrice.Text="";
            TotalSalesItems.Text="";

        }

        private async void saveButton_Click(object sender, RoutedEventArgs e)
        {
            if (TransportRequest.IsChecked == true)
            {
                int b = executeSalesMaster();
                int a = executeSalesDatails();

                if (a > 0 && b > 0)
                {
                    await this.ShowMessageAsync("Successfull", "New Sale Details have been Successfully Entered", MessageDialogStyle.Affirmative);
                }
                else
                {
                    await this.ShowMessageAsync("Error", "Sorry Cannot proceed, Please Try again", MessageDialogStyle.Affirmative);
                }
                TransportationDetails transport = new TransportationDetails();
                transport.Show();
                this.Close();
            }
            else
            {
                int b = executeSalesMaster();
                int a = executeSalesDatails();

                if (b > 0)
                {
                    await this.ShowMessageAsync("Successfull", "New Sale Details have been Successfully Entered", MessageDialogStyle.Affirmative);
                }
                else
                {
                    await this.ShowMessageAsync("Error", "Sorry Can not add, Please Try again", MessageDialogStyle.Affirmative);
                }
                dt.Clear();
                Quantity.Text = "";
                SalesInvoiceID.Text = "";
                SalesDate.SelectedDate = null;
                TotalSalesPrice.Text = "";
                TotalSalesItems.Text = "";
            }

        }

        private async void addItemButton_Click(object sender, RoutedEventArgs e)
        {
            val = new Validation();
            if (val.isEmpty(salesId) || val.isEmpty(sellingCenter) || val.isEmpty(customerName) || val.isEmpty(itemName) ||
                val.isEmpty(date.ToString()) || val.isEmpty(quantity.ToString()))
            {
                await this.ShowMessageAsync("Error", "Data Cannot be Empty", MessageDialogStyle.Affirmative);
            }
            else
            {
                DataRow workRow;
                workRow = dt.NewRow();
                workRow[0] = SalesInvoiceID.Text;
                workRow[1] = ItemName.Text;
                workRow[2] = Quantity.Text;
                workRow[3] = Price.Text;
                workRow[4] = TotalItemPrice.Text;
                dt.Rows.Add(workRow);

                NewSalesGrid.Items.Add(new { name = ItemName.Text, quantity = Quantity.Text, itemPrice = Price.Text, totalPrice = TotalItemPrice.Text });
                totalPriceOfItemCategory = Convert.ToInt32(Price.Text) * Convert.ToInt32(Quantity.Text);
                totalPrice = totalPrice + totalPriceOfItemCategory;
                totalItems = NewSalesGrid.Items.Count;
                TotalSalesItems.Text = totalItems.ToString();
                TotalSalesPrice.Text = totalPrice.ToString();
            }
        }

        public int executeSalesMaster()
        {
            int affectedLines = 0 ;
            try
            {
                sale.InvoiceID = SalesInvoiceID.Text;
                sale.CustomerName = CustomerName.SelectedItem.ToString();
                sale.SellingCenter = SellingCenter.SelectedValue.ToString();
                sale.SalesDate = SalesDate.SelectedDate.Value;
                sale.TotalSalesPrice = Convert.ToInt32(TotalSalesPrice.Text);
                sale.TotalItems = Convert.ToInt32(TotalSalesItems.Text);
                sale.Transport = TransportRequest.IsChecked.Value;

                affectedLines = handleDatabase.executeSalesMaster(sale);
            }
            catch (SqlException sqlException)
            {
                Console.WriteLine(sqlException);
            }
            return affectedLines;
        }

        public int executeSalesDatails()
        {
            int affectedLines = 0;
            try
            {
                affectedLines = handleDatabase.executeSalesDetails(dt);
                handleDatabase.updateSalesStockDetails(dt, sale);
            }
            catch (SqlException sqlException)
            {
                Console.WriteLine(sqlException);
            }
            return affectedLines;
        }

        private void ItemName_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            String itemName = ItemName.SelectedItem.ToString();
            Price.Text = handleDatabase.getItemPrice(itemName).ToString();
            TotalItemPrice.Text = " ";
            Quantity.Text = "";
        }

        private void Quantity_TextChanged(object sender, TextChangedEventArgs e)
        {
            val = new Validation();
            int totalitemPrice = 0;
            Int32 qty = 0;
            Int32 price = 0;
            if (!Quantity.Text.Equals("") || !val.isNumeric(quantity.ToString()))
            {
                price = Convert.ToInt32(itemPrice);
                qty = Convert.ToInt32(Quantity.Text);
                if (price != 0 && qty != 0)
                {
                    totalitemPrice = price * qty;
                    TotalItemPrice.Text = totalitemPrice.ToString();
                }               
            }
        }
    }
}
