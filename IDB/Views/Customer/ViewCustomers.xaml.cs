using MahApps.Metro.Controls;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
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
    /// Interaction logic for ViewCustomers.xaml
    /// </summary>
    public partial class ViewCustomers : MetroWindow
    {
        public ViewCustomers()
        {
            InitializeComponent();
            DataContext = this;
            HandleDatabase handleDatabase = new HandleDatabase();
            DataTable table = handleDatabase.getDetailsforGrid("customer");
            CustomerGrid.ItemsSource = table.DefaultView;
        }

        private void back_Click(object sender, RoutedEventArgs e)
        {
            MainMenu mainMenu = new MainMenu();
            mainMenu.Show();
            this.Close();
        }

        private void CustomerGrid_MouseDoubleClick(object sender, MouseButtonEventArgs e)
        {
            DataRowView drv = (DataRowView)CustomerGrid.SelectedItem;
            string result = (drv["ID"]).ToString();
            UpdateCustomer updateCustomer = new UpdateCustomer(result);
            updateCustomer.Show();
            this.Close();
        }
    }
}
