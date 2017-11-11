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
    /// Interaction logic for Items.xaml
    /// </summary>
    public partial class Items : MetroWindow
    {
        public String itemCode { get; set; }
        public String name { get; set; }
        public String category { get; set; }
        public String description { get; set; }

        ItemData item = new ItemData();
        HandleDatabase handleDatabase = new HandleDatabase();
        DataTable dt;
        Validation val;
        public Items()
        {
            InitializeComponent();
            dt = new DataTable();
            dt.Columns.Add("itemCode", typeof(String));
            dt.Columns.Add("itemName", typeof(String));
            dt.Columns.Add("category", typeof(String));
            dt.Columns.Add("description", typeof(String));
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
            ItemCode.Text = "";
            Name.Text = "";
            Description.Text = "";
            Category.Text = "";
        }

        private async void saveButton_Click(object sender, RoutedEventArgs e)
        {
            if (dt.Rows.Count == 0)
                await this.ShowMessageAsync("Error", "Please enter items you need to register", MessageDialogStyle.Affirmative);
            else
            {
                try
                {
                    int affectedLines = 0;
                    affectedLines = handleDatabase.executeItemEntry(dt);
                    handleDatabase.enterStockDetails(dt);
                    NewItemGrid.Columns.Clear();
                    dt.Clear();
                    if (affectedLines > 0)
                    {
                        await this.ShowMessageAsync("Successfull", "New Supplier have been Successfully Entered", MessageDialogStyle.Affirmative);
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

        private async void addItemButton_Click(object sender, RoutedEventArgs e)
        {
            val = new Validation();
            if (val.isEmpty(description)||val.isEmpty(category)||val.isEmpty(name)||val.isEmpty(itemCode))
            {
                await this.ShowMessageAsync("Error", "Data Cannot be Empty", MessageDialogStyle.Affirmative);
            }
            else
            {
                DataRow workRow;
                workRow = dt.NewRow();
                workRow[0] = ItemCode.Text;
                workRow[1] = Name.Text;
                workRow[2] = Category.Text;
                workRow[3] = Description.Text;
                dt.Rows.Add(workRow);

                NewItemGrid.Items.Add(new { itemCode = ItemCode.Text, name = Name.Text, category = Category.Text, description = Description.Text });
                ItemCode.Text = "";
                Name.Text = "";
                Description.Text = "";
                Category.Text = "";
            }       
        }
    }
}
