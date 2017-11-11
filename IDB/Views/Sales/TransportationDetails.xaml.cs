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
    /// Interaction logic for TransportationDetails.xaml
    /// </summary>
    public partial class TransportationDetails : MetroWindow
    {
        public String customerName { get; set; }
        public String vehicelNo { get; set; }
        public String sellingCenter { get; set; }
        public String driverName { get; set; }
        public DateTime date { get; set; }
        public String destination { get; set; }
        public int distance { get; set; }
        public int arrivalTime { get; set; }
        HandleDatabase handleDatabase = new HandleDatabase();
        transportationData transport = new transportationData();
        Validation val;
        public TransportationDetails()
        {
            InitializeComponent();
            DataContext = this;
            List<String> customerNameList = new HandleDatabase().getListDetailsforSales("customer");
            List<String> sellingCenterNameList = new HandleDatabase().getListDetailsforSales("sellingCenter");
            CustomerName.ItemsSource = customerNameList;
            SellingCenter.ItemsSource = sellingCenterNameList;
        }

        private async void saveButton_Click(object sender, RoutedEventArgs e)
        {
            val = new Validation();
            if (val.isEmpty(customerName) || val.isEmpty(vehicelNo) || val.isEmpty(sellingCenter) || val.isEmpty(destination) || val.isEmpty(date.ToString()) ||
                val.isEmpty(driverName) || val.isEmpty(distance.ToString()) || val.isEmpty(arrivalTime.ToString()))
            {
                await this.ShowMessageAsync("Error", "Data Cannot be Empty", MessageDialogStyle.Affirmative);
            }
            else
            {
                int affectedLines = 0;
                transport.CustomerName = CustomerName.SelectedItem.ToString();
                transport.VehicleNo = VehicleNo.SelectedItem.ToString();
                transport.DriverName = DriverName.SelectedItem.ToString();
                transport.Date = RequestDate.SelectedDate.Value;
                transport.ArrivalTime = Convert.ToInt32(ArrivalTime.Text);
                transport.Destination = Desination.Text;
                transport.Distance = Convert.ToInt32(Distance.Text);
                transport.Income = Convert.ToInt32(Income.Text);
                transport.SellingCenter = SellingCenter.SelectedValue.ToString();
                try
                {
                    handleDatabase = new HandleDatabase();
                    affectedLines = handleDatabase.executeTransportaionRequest(transport);

                    if (affectedLines > 0)
                    {
                        await this.ShowMessageAsync("Successfull", "New Entry have been Successfully Registered", MessageDialogStyle.Affirmative);
                        this.Close();
                        MainMenu menu = new MainMenu();
                        menu.Show();
                    }
                    else
                    {
                        await this.ShowMessageAsync("Error", "Sorry Can not Proceed with transportation", MessageDialogStyle.Affirmative);
                        this.Close();
                        MainMenu menu = new MainMenu();
                        menu.Show();
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
            CustomerName.SelectedIndex = 0;
            VehicleNo.SelectedIndex = 0;
            DriverName.SelectedIndex = 0;
            RequestDate.SelectedDate = null;
            ArrivalTime.Text = "";
            Desination.Text = "";
            Distance.Text = "";
            Income.Text = "";
            SellingCenter.SelectedIndex = 0;
        }

        private void back_Click(object sender, RoutedEventArgs e)
        {
            Sale sale = new Sale();
            sale.Show();
            this.Close();
        }

        private void SellingCenter_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            String salesCenter = SellingCenter.SelectedValue.ToString();
            List<String> driverNameList = new HandleDatabase().getRelevantDriverDetailsForTransportation(salesCenter);
            List<String> vehicleList = new HandleDatabase().getRelevantVehicleDetailsForTransportation(salesCenter);
            DriverName.ItemsSource = driverNameList;
            VehicleNo.ItemsSource = vehicleList;
        }

        private void Distance_TextChanged(object sender, TextChangedEventArgs e)
        {
            int income = 0;
            int dis = Convert.ToInt32(Distance.Text);
            if (dis < 5)
            {
                income = dis * 25;
            }
            else
            {
                income = (dis - 5) * 50 + 125;
            }
            Income.Text = income.ToString();
        }
    }
}
