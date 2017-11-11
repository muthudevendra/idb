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
    /// Interaction logic for TransportaionDetails.xaml
    /// </summary>
    public partial class TransportaionDetails : MetroWindow
    {
        DataTable driverTable, vehicleTable, transportationTable;
        public TransportaionDetails()
        {
            InitializeComponent();
            DataContext = this;
            HandleDatabase handleDatabase = new HandleDatabase();
            vehicleTable = handleDatabase.getDetailsforGrid("vehicle");
            vehicleGrid.ItemsSource = vehicleTable.DefaultView;

            driverTable = handleDatabase.getDetailsforGrid("driver");
            DriverGrid.ItemsSource = driverTable.DefaultView;

            transportationTable = handleDatabase.getDetailsforGrid("transportation");
            TransportGrid.ItemsSource = transportationTable.DefaultView;
        }

        private void back_Click(object sender, RoutedEventArgs e)
        {
            MainMenu mainMenu = new MainMenu();
            mainMenu.Show();
            this.Close();
        }
    }
}
