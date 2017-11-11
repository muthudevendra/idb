using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IDB
{
    class SupplierData
    {
        private String supplierName;

        public String Suppliername
        {
            get { return supplierName; }
            set { supplierName = value; }
        }
        private String address;

        public String Address
        {
            get { return address; }
            set { address = value; }
        }
        private int mobileContact;

        public int MobileContact
        {
            get { return mobileContact; }
            set { mobileContact = value; }
        }
        private int homeContact;

        public int HomeContact
        {
            get { return homeContact; }
            set { homeContact = value; }
        }

        private String compnayName;

        public String CompanyName
        {
            get { return compnayName; }
            set { compnayName = value; }
        }

        private int supplierId;

        public int SuplierID
        {
            get { return supplierId; }
            set { supplierId = value; }
        }


    }
}
