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
    /// Interaction logic for SellingCenter.xaml
    /// </summary>
    public partial class SellingCenter : MetroWindow
    {
        public String location { get; set; }
        public String addressLine1 { get; set; }
        public String addressLine2 { get; set; }
        public int mobileNumber { get; set; }
        public int fixedNumber { get; set; }

        SalesCenterData salesCenter = new SalesCenterData();
        HandleDatabase handleDatabase = new HandleDatabase();
        Validation val;
        public SellingCenter()
        {
            InitializeComponent();
            DataContext = this;
        }

        private async void saveButton_Click(object sender, RoutedEventArgs e)
        {
            val = new Validation();
            if (val.isEmpty(location) || val.isEmpty(addressLine1) || val.isEmpty(addressLine2)||val.isEmpty(mobileNumber.ToString())||val.isEmpty(fixedNumber.ToString()))
            {
                await this.ShowMessageAsync("Error", "Data Cannot be Empty", MessageDialogStyle.Affirmative);
            }
            else if (val.isNumeric(mobileNumber.ToString())||val.isNumeric(fixedNumber.ToString()))
            {
                await this.ShowMessageAsync("Error", "Contact Numbers Should be Numeric", MessageDialogStyle.Affirmative);
            }
            else
            {
                int affectedLines = 0;
                salesCenter.Location = Location.Text;
                salesCenter.FixedNumber = Convert.ToInt32(FixedLine.Text);
                salesCenter.Mobile = Convert.ToInt32(Mobile.Text);
                salesCenter.Address = Address1.Text + ' ' + Address2.Text + ' ' + Address3.Text;
                try
                {
                    handleDatabase = new HandleDatabase();
                    affectedLines = handleDatabase.executeSalesCenetrEntry(salesCenter);

                    if (affectedLines > 0)
                    {
                        await this.ShowMessageAsync("Successfull", "New Sales Center have been Successfully Entered", MessageDialogStyle.Affirmative);
                        Location.Text = "";
                        FixedLine.Text = "";
                        Mobile.Text = "";
                        Address1.Text = "";
                        Address2.Text = "";
                        Address3.Text = "";
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
            }
        }

        private void clearButton_Click(object sender, RoutedEventArgs e)
        {
            Location.Text="";
            FixedLine.Text="";
            Mobile.Text="";
            Address1.Text = "";
            Address2.Text = "";
            Address3.Text="";
        }

        private void back_Click(object sender, RoutedEventArgs e)
        {
            MainMenu mainMenu = new MainMenu();
            mainMenu.Show();
            this.Close();
        }
    }
}
