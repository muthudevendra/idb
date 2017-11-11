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
    /// Interaction logic for Vehicles.xaml
    /// </summary>
    public partial class Vehicles : MetroWindow
    {
        public String vehicleNo { get; set; }
        public String type { get; set; }
        public int capacity { get; set; }
        public String salesCenter { get; set; }
        public DateTime date { get; set; }

        VehicleData vehicle = new VehicleData();
        HandleDatabase handleDatabase = new HandleDatabase();
        Validation val;
        public Vehicles()
        {
            InitializeComponent();
            DataContext = this;
            List<String> sellingCenterNameList = new HandleDatabase().getListDetailsforSales("sellingCenter");
            SellingCenter.ItemsSource = sellingCenterNameList;
        }

        private void back_Click(object sender, RoutedEventArgs e)
        {
            MainMenu mainMenu = new MainMenu();
            mainMenu.Show();
            this.Close();
        }

        private void clearButton_Click(object sender, RoutedEventArgs e)
        {
            clearFields();
        }

        private async void saveButton_Click(object sender, RoutedEventArgs e)
        {
            val = new Validation();
            if (val.isEmpty(capacity.ToString())|| val.isEmpty(date.ToString())|| val.isEmpty(type)||val.isEmpty(vehicleNo)||val.isEmpty(salesCenter))
            {
                await this.ShowMessageAsync("Error", "Data Cannot be Empty", MessageDialogStyle.Affirmative);
            }
            else if (val.isNumeric(capacity.ToString()))
            {
                await this.ShowMessageAsync("Error", "Capacity shoul be numeric", MessageDialogStyle.Affirmative);
            }
            else
            {
                int affectedLines = 0;
                vehicle.VehicleNo = VehicleNo.Text;
                vehicle.Type = Type.Text;
                vehicle.Capacity = Convert.ToInt32(Capacity.Text);
                vehicle.Date = Convert.ToDateTime(RegisterDate.Text);
                vehicle.SalesCenter = SellingCenter.SelectedValue.ToString();
                try
                {
                    handleDatabase = new HandleDatabase();
                    affectedLines = handleDatabase.executeVehicleDataEntry(vehicle);

                    if (affectedLines > 0)
                    {
                        await this.ShowMessageAsync("Successfull", "New Entry have been Successfully Registered", MessageDialogStyle.Affirmative);
                        clearFields();
                    }
                    else
                    {
                        await this.ShowMessageAsync("Error", "Sorry Can not Proceed, Please Try again", MessageDialogStyle.Affirmative);
                    }
                    clearFields();
                }
                catch (SqlException sqlException)
                {
                    Console.WriteLine(sqlException);
                }
                clearFields();
            }        
        }
        public void clearFields()
        {
            VehicleNo.Text = "";
            Type.Text = "";
            Capacity.Text = "";
            RegisterDate.Text = "";
        }
    }
}
