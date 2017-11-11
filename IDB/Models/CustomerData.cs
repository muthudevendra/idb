using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IDB
{
    public class CustomerData
    {
        private String firstName;
        private String lastName;
        private String address;
        private String email;
        private int mobileNumber;
        private int fixedNumber;

        public void setFirstName(String firstName)
        {
            this.firstName = firstName;
        }
        public void setLastName(String lastName)
        {
            this.lastName = lastName;
        }
        public void setAddress(String addressLine1, String addressLine2 = "", String addressLine3 = "")
        {
            this.address = addressLine1 + " " + addressLine2 + " " + addressLine3;
        }
        public void setEmail(String email)
        {
            this.email = email;
        }
        public void setMobileNumer(int mobileNumber)
        {
            this.mobileNumber = mobileNumber;
        }
        public void setFixedNumber(int fixedNumber)
        {
            this.fixedNumber = fixedNumber;
        }

        public String getFirstName()
        {
            return firstName;
        }
        public String getLastName()
        {
            return lastName;
        }
        public String getAddress()
        {
            return address;
        }
        public String getEmail()
        {
            return email;
        }
        public int getMobileNumber()
        {
            return mobileNumber;
        }
        public int getFixedNumber()
        {
            return fixedNumber;
        }

        private int customerId;
                            
        public int CustomerID
        {
            get { return customerId; }
            set { customerId = value; }
        }

    }
}
