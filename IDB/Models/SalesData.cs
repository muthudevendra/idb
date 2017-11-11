using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IDB
{
    class SalesData
    {
        private DateTime salesDate;

        public DateTime SalesDate
        {
            get { return salesDate; }
            set { salesDate = value; }
        }

        private String invoiceId;

        public String InvoiceID
        {
            get { return invoiceId; }
            set { invoiceId = value; }
        }
        private String itemName;

        public String ItemName
        {
            get { return itemName; }
            set { itemName = value; }
        }
        private int quantity;

        public int Quantity
        {
            get { return quantity; }
            set { quantity = value; }
        }
        private String customerName;

        public String CustomerName
        {
            get { return customerName; }
            set { customerName = value; }
        }
        private int totalSalesPrice;

        public int TotalSalesPrice
        {
            get { return totalSalesPrice; }
            set { totalSalesPrice = value; }
        }

        private int items;

        public int TotalItems
        {
            get { return items; }
            set { items = value; }
        }
        private int price;

        public int TotalPrice
        {
            get { return price; }
            set { price = value; }
        }
        private String sellingCenter;

        public String SellingCenter
        {
            get { return sellingCenter; }
            set { sellingCenter = value; }
        }
        private bool transport;

        public bool Transport
        {
            get { return transport; }
            set { transport = value; }
        }

    }
}
