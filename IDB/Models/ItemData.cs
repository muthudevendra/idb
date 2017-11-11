using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IDB
{
    class ItemData
    {
        private String name;

        public String Name
        {
            get { return name; }
            set { name = value; }
        }

        private String itemCode;

        public String ItemCode
        {
            get { return itemCode; }
            set { itemCode = value; }
        }
        private String category;

        public String Category
        {
            get { return category; }
            set { category = value; }
        }
        private String description;

        public String Description
        {
            get { return description; }
            set { description = value; }
        }

    }
}
