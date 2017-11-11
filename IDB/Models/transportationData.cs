using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IDB
{
    class transportationData
    {
        private String customerName;

        public String CustomerName
        {
            get { return customerName; }
            set { customerName = value; }
        }
        private String sellingCenter;

        public String SellingCenter
        {
            get { return sellingCenter; }
            set { sellingCenter = value; }
        }
        private String vehicleNo;

        public String VehicleNo
        {
            get { return vehicleNo; }
            set { vehicleNo = value; }
        }
        private String driverName;

        public String DriverName
        {
            get { return driverName; }
            set { driverName = value; }
        }
        private DateTime date;

        public DateTime Date
        {
            get { return date; }
            set { date = value; }
        }
        private int arrivalTime;

        public int ArrivalTime
        {
            get { return arrivalTime; }
            set { arrivalTime = value; }
        }
        private String destination;

        public String Destination
        {
            get { return destination; }
            set { destination = value; }
        }
        private int distance;

        public int Distance
        {
            get { return distance; }
            set { distance = value; }
        }
        private int income;

        public int Income
        {
            get { return income; }
            set { income = value; }
        }

    }
}
