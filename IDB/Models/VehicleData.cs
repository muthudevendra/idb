using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IDB
{
    class VehicleData
    {
        private String vehicleNo;

        public String VehicleNo
        {
            get { return vehicleNo; }
            set { vehicleNo = value; }
        }
        private String type;

        public String Type
        {
            get { return type; }
            set { type = value; }
        }
        private int capacity;

        public int Capacity
        {
            get { return capacity; }
            set { capacity = value; }
        }
        private DateTime date;

        public DateTime Date
        {
            get { return date; }
            set { date = value; }
        }

        private String salesCenter;

        public String SalesCenter
        {
            get { return salesCenter; }
            set { salesCenter = value; }
        }

    }
}
