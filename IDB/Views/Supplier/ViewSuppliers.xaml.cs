using MahApps.Metro.Controls;
using System;
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
    /// Interaction logic for ViewSuppliers.xaml
    /// </summary>
    public partial class ViewSuppliers : MetroWindow
    {
        public ViewSuppliers()
        {
            InitializeComponent();
            DataContext = this;
            HandleDatabase handleDatabase = new HandleDatabase();
            DataTable table = handleDatabase.getDetailsforGrid("supplier");
            SupplierGrid.ItemsSource = table.DefaultView;
        }

        private void back_Click(object sender, RoutedEventArgs e)
        {
            MainMenu mainMenu = new MainMenu();
            mainMenu.Show();
            this.Close();
        }

        private void SupplierGrid_MouseDoubleClick(object sender, MouseButtonEventArgs e)
        {
            DataRowView drv = (DataRowView)SupplierGrid.SelectedItem;
            String result = (drv["ID"]).ToString();
            UpdateSupplier updateSupplier = new UpdateSupplier(result);
            updateSupplier.Show();
            this.Close();
        }
    }
}
