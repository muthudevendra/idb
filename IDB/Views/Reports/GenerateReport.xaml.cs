using MahApps.Metro.Controls;
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
using System.Data;
using System.Data.SqlClient;
using Microsoft.Reporting.WinForms;
namespace IDB
{
    /// <summary>
    /// Interaction logic for GenerateReport.xaml
    /// </summary>
    public partial class GenerateReport : MetroWindow
    {
        HandleDatabase handleDatabase = new HandleDatabase();
        public GenerateReport()
        {
            InitializeComponent();
            DataContext = this;
        }

        private void generate_Click(object sender, RoutedEventArgs e)
        {
            int selectedindex = CatogoryName.SelectedIndex;
            if (selectedindex.Equals(1))
            {
                ReportViewer.Reset();
                DataTable stockTable = handleDatabase.getDetailsforGrid("stock");
                ReportDataSource stockDataset = new ReportDataSource("StockDataset", stockTable);
                ReportViewer.LocalReport.DataSources.Add(stockDataset);
                ReportViewer.LocalReport.ReportEmbeddedResource = "IDB.Reports.StockReport.rdlc";
                ReportViewer.RefreshReport();
            }
            else if (selectedindex.Equals(2))
            {
                String supplier = options.SelectedItem.ToString();
                ReportViewer.Reset();
                DataTable purchaseMasterTable = handleDatabase.getPurchaseMasterforReport(supplier);
                DataTable purchaseDetailsTable = handleDatabase.getDetailsforGrid("purchaseDetails");
                ReportDataSource purchaseDetailsDataset = new ReportDataSource("PurchaseDetailsDataset", purchaseDetailsTable);
                ReportDataSource purchaseMasterDataset = new ReportDataSource("PurchaseMasterDataset", purchaseMasterTable);
                ReportViewer.LocalReport.DataSources.Add(purchaseDetailsDataset);
                ReportViewer.LocalReport.DataSources.Add(purchaseMasterDataset);
                ReportViewer.LocalReport.ReportEmbeddedResource = "IDB.Reports.PurchaseReport.rdlc";
                ReportViewer.RefreshReport();
            }
            else if (selectedindex.Equals(3))
            {
                String customer = options.SelectedItem.ToString();
                ReportViewer.Reset();
                DataTable salesMasterTable = handleDatabase.getSalesMasterforReport(customer);
                DataTable salesDetailsTable = handleDatabase.getDetailsforGrid("salesDetails");
                ReportDataSource salesDetailsDataset = new ReportDataSource("SalesDetailsDataset", salesDetailsTable);
                ReportDataSource salesMasterDataset = new ReportDataSource("SalesMasterDataset", salesMasterTable);
                ReportViewer.LocalReport.DataSources.Add(salesDetailsDataset);
                ReportViewer.LocalReport.DataSources.Add(salesMasterDataset);
                ReportViewer.LocalReport.ReportEmbeddedResource = "IDB.Reports.SalesReport.rdlc";
                ReportViewer.RefreshReport();
            }
            else if (selectedindex.Equals(4))
            {
                ReportViewer.Reset();
                DataTable dt = handleDatabase.getDetailsforGrid("transportation");
                ReportDataSource ds = new ReportDataSource("TransportationDataset", dt);
                ReportViewer.LocalReport.DataSources.Add(ds);
                ReportViewer.LocalReport.ReportEmbeddedResource = "IDB.Reports.TransportationReport.rdlc";
                ReportViewer.RefreshReport();
            }
            else if (selectedindex.Equals(5))
            {
                ReportViewer.Reset();
                DataTable dt = handleDatabase.getDetailsforGrid("supplier");
                ReportDataSource ds = new ReportDataSource("Supplier", dt);
                ReportViewer.LocalReport.DataSources.Add(ds);
                ReportViewer.LocalReport.ReportEmbeddedResource = "IDB.Reports.SupplierReport.rdlc";
                ReportViewer.RefreshReport();
            }
            else if (selectedindex.Equals(6))
            {
                ReportViewer.Reset();
                DataTable customerTable = handleDatabase.getDetailsforGrid("customer");
                ReportDataSource customerDataset = new ReportDataSource("CustomerDataset", customerTable);
                ReportViewer.LocalReport.DataSources.Add(customerDataset);
                ReportViewer.LocalReport.ReportEmbeddedResource = "IDB.Reports.CustomerReport.rdlc";
                ReportViewer.RefreshReport();
            }
            else if (selectedindex.Equals(7))
            {
                ReportViewer.Reset();
                DataTable driverTable = handleDatabase.getDetailsforGrid("driver");
                DataTable vehicelTable = handleDatabase.getDetailsforGrid("vehicle");
                DataTable salesCenterTable = handleDatabase.getDetailsforGrid("salesCenter");

                ReportDataSource driverDataset = new ReportDataSource("DriverDataset", driverTable);
                ReportDataSource vehicelDataset = new ReportDataSource("VehicleDataset", vehicelTable);
                ReportDataSource salesCenterDataset = new ReportDataSource("SellingcenterDataset", salesCenterTable);

                ReportViewer.LocalReport.DataSources.Add(driverDataset);
                ReportViewer.LocalReport.DataSources.Add(vehicelDataset);
                ReportViewer.LocalReport.DataSources.Add(salesCenterDataset);

                ReportViewer.LocalReport.ReportEmbeddedResource = "IDB.Reports.ExternalResources.rdlc";
                ReportViewer.RefreshReport();
            }
        }

        private void back_Click(object sender, RoutedEventArgs e)
        {
            MainMenu menu = new MainMenu();
            this.Close();
            menu.Show();
        }

        private void CatogoryName_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            int selectedindex = CatogoryName.SelectedIndex;
            if (selectedindex.Equals(4) || selectedindex.Equals(5) || selectedindex.Equals(6)|| selectedindex.Equals(6) || selectedindex.Equals(1))
            {
                options.Visibility = Visibility.Hidden;
            }
            else if (selectedindex.Equals(2))
            {
                options.Visibility = Visibility.Visible;
                MessageBox.Show("Select a Supplier Name from Option menu");
                List<String> supplierNameList = handleDatabase.getNameListforPurchases("purchaseMaster");
                options.ItemsSource = supplierNameList;
            }
            else if (selectedindex.Equals(3))
            {
                options.Visibility = Visibility.Visible;
                MessageBox.Show("Select a customer Name from Option menu");
                List<String> customerNameList = handleDatabase.getListDetailsforSales("customer");
                options.ItemsSource = customerNameList;
            }
        }
    }
}
