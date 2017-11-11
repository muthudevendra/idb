using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IDB
{
    class PurchaseData
    {
        private DateTime purchaseDate;

        public DateTime PurchaseDate
        {
            get { return purchaseDate; }
            set { purchaseDate = value; }
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
        private String supplierName;

        public String SupplierName
        {
            get { return supplierName; }
            set { supplierName = value; }
        }
        private int purchasePrice;

        public int PurchasePrice
        {
            get { return purchasePrice; }
            set { purchasePrice = value; }
        }
        private int salePrice;

        public int SalePrice
        {
            get { return salePrice; }
            set { salePrice = value; }
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

    }
}
