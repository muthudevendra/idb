using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IDB
{
    class DriverData
    {
        private String firstName;

        public String FirstName
        {
            get { return firstName; }
            set { firstName = value; }
        }
        private String lastName;

        public String LastName
        {
            get { return lastName; }
            set { lastName = value; }
        }
        private String address;

        public String Address
        {
            get { return address; }
            set { address = value; }
        }
        private String nic;

        public String NIC
        {
            get { return nic; }
            set { nic = value; }
        }
        private int mobile;

        public int Mobile
        {
            get { return mobile; }
            set { mobile = value; }
        }
        private int homeContact;

        public int HomeContact
        {
            get { return homeContact; }
            set { homeContact = value; }
        }
        private String salesCenter;

        public String SalesCenter
        {
            get { return salesCenter; }
            set { salesCenter = value; }
        }


    }
}
