using MahApps.Metro.Controls;
using MahApps.Metro.Controls.Dialogs;
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

namespace IDB
{
    /// <summary>
    /// Interaction logic for MainMenu.xaml
    /// </summary>
    public partial class MainMenu : MetroWindow
    {
        public MainMenu()
        {
            InitializeComponent();
            DataContext = this;
        }

        private void Tile_Click_1(object sender, RoutedEventArgs e)
        {
            Sale sale = new Sale();
            sale.Show();
            this.Close();
        }

        private void Tile_Click(object sender, RoutedEventArgs e)
        {
            Purchase purchase = new Purchase();
            purchase.Show();
            this.Close();
        }

        private void Tile_Click_2(object sender, RoutedEventArgs e)
        {
            ViewCustomers viewCustomers = new ViewCustomers();
            viewCustomers.Show();
            this.Close();
        }

        private void Tile_Click_3(object sender, RoutedEventArgs e)
        {
            Customer customer = new Customer();
            customer.Show();
            this.Close();
        }

        private void Tile_Click_4(object sender, RoutedEventArgs e)
        {
            ViewSuppliers viewSuppliers = new ViewSuppliers();
            viewSuppliers.Show();
            this.Close();
        }

        private void Tile_Click_5(object sender, RoutedEventArgs e)
        {
            Supplier supplier = new Supplier();
            supplier.Show();
            this.Close();
        }

        private void Tile_Click_6(object sender, RoutedEventArgs e)
        {
            ViewItems viewItems = new ViewItems();
            viewItems.Show();
            this.Close();
        }

        private void Tile_Click_7(object sender, RoutedEventArgs e)
        {
            Items item = new Items();
            item.Show();
            this.Close();
        }

        private void Tile_Click_8(object sender, RoutedEventArgs e)
        {
            Vehicles vehicle = new Vehicles();
            vehicle.Show();
            this.Close();
        }

        private void Tile_Click_9(object sender, RoutedEventArgs e)
        {
            Drivers driver = new Drivers();
            driver.Show();
            this.Close();
        }

        private void Tile_Click_10(object sender, RoutedEventArgs e)
        {
            SellingCenter center = new SellingCenter();
            center.Show();
            this.Close();
        }

        private void Tile_Click_11(object sender, RoutedEventArgs e)
        {
            GenerateReport report = new GenerateReport();
            this.Close();
            report.Show();
        }

        private void Tile_Click_12(object sender, RoutedEventArgs e)
        {
            ViewStock viewStock = new ViewStock();
            viewStock.Show();
            this.Close();
        }

        private void Tile_Click_13(object sender, RoutedEventArgs e)
        {
            TransportaionDetails transport = new TransportaionDetails();
            transport.Show();
            this.Close();
        }
    }
}
