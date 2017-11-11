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
    /// Interaction logic for ViewStock.xaml
    /// </summary>
    public partial class ViewStock : MetroWindow
    {
        DataTable stockTable;
        public ViewStock()
        {
            InitializeComponent();
            DataContext = this;
            HandleDatabase handleDatabase = new HandleDatabase();
            stockTable = handleDatabase.getDetailsforGrid("stockDetails");
            StockGrid.ItemsSource = stockTable.DefaultView;
        }
        private void back_Click(object sender, RoutedEventArgs e)
        {
            MainMenu mainMenu = new MainMenu();
            mainMenu.Show();
            this.Close();
        }
    }
}
