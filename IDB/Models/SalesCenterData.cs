using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IDB
{
    class SalesCenterData
    {
        private String location;

        public String Location
        {
            get { return location; }
            set { location = value; }
        }
        private String address;

        public String Address
        {
            get { return address; }
            set { address = value; }
        }
        private Int32 mobile;

        public Int32 Mobile
        {
            get { return mobile; }
            set { mobile = value; }
        }
        private Int32 fixedLine;

        public Int32 FixedNumber
        {
            get { return fixedLine; }
            set { fixedLine = value; }
        }

    }
}
