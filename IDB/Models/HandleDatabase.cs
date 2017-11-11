using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Controls;

namespace IDB
{
    class HandleDatabase
    {
        private SqlConnection conn;
        private SqlDataReader reader;
        private String connectionString = "Data Source = PEARLGEM; Initial Catalog = IDB; Integrated Security = True";

        public int createUser(String userName, String password, String accountType)
        {
            conn = new SqlConnection(connectionString);
            String query = "INSERT INTO users (userName, password, userType) VALUES ('" + userName + "','" + password + "','" + accountType + "')";
            int affectedLines = 0;
            try
            {
                conn.Open();
                SqlCommand comm = new SqlCommand(query, conn);
                affectedLines = comm.ExecuteNonQuery();
                comm.Clone();

            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                if (conn != null)
                {
                    conn.Close();
                }
            }
            return affectedLines;
        }

        public bool getUser(String userName , String password)
        {
            bool validUser = false;
            int userID = 0;
            String accountType = "";

            try
            {
                String query = "SELECT * from users where(userName = '"+userName+"' and password ='"+password+"' )";
                conn = new SqlConnection(connectionString);
                SqlCommand comm = new SqlCommand(query, conn);
                conn.Open();
                reader = comm.ExecuteReader();
                while (reader.Read())
                {
                    userID = reader.GetInt32(0);
                    validUser = true;
                }
            }
            catch(SqlException ex)
            {
                throw ex;
            }
            finally
            {
                if (conn != null)
                {
                    conn.Close();
                }
            }
            return validUser;
        }

        public int executeCustomerEntry(CustomerData customer)
        {
            String firstName = customer.getFirstName();
            String lastName = customer.getLastName();
            String address = customer.getAddress();
            int mobile = customer.getMobileNumber();
            int fixedNumber = customer.getFixedNumber();
            String email = customer.getEmail(); 
            String query = "INSERT INTO customer(firstName, lastName, address, email, mobile, fixedNumber) VALUES (@firstName, @lastName, @Address, @email, @Mobile, @fixedNumber)";

            int affectedLines = 0;
            try
            {
                conn = new SqlConnection(connectionString);
                SqlCommand comm = new SqlCommand(query, conn);
                comm.Parameters.AddWithValue("@firstName", firstName);
                comm.Parameters.AddWithValue("@lastName", lastName);
                comm.Parameters.AddWithValue("@Address", address);
                comm.Parameters.AddWithValue("@Mobile", mobile);
                comm.Parameters.AddWithValue("@fixedNumber", fixedNumber);
                comm.Parameters.AddWithValue("@email", email);
                conn.Open();
                affectedLines = comm.ExecuteNonQuery();
            }
            catch (SqlException ex)
            {
                throw ex;
            }
            finally
            {
                if (conn != null)
                {
                    conn.Close();
                }
            }
            return affectedLines;
        }
 
        public int executeCustomerUpdate(CustomerData customer, String CustomerID)
        {
            String firstName = customer.getFirstName();
            String lastName = customer.getLastName();
            String address = customer.getAddress();
            int mobile = customer.getMobileNumber();
            int fixedNumber = customer.getFixedNumber();
            String email = customer.getEmail();

            String query = "UPDATE customer SET firstName = @firstName, lastName = @lastName, address = @Address, email = @email, mobile = @Mobile, fixedNumber = @fixedNumber WHERE ID = @CustomerID";

            int affectedLines = 0;
            try
            {
                conn = new SqlConnection(connectionString);
                SqlCommand comm = new SqlCommand(query, conn);
                comm.Parameters.AddWithValue("@CustomerID", Convert.ToInt32(CustomerID));
                comm.Parameters.AddWithValue("@firstName", firstName);
                comm.Parameters.AddWithValue("@lastName", lastName);
                comm.Parameters.AddWithValue("@Address", address);
                comm.Parameters.AddWithValue("@Mobile", mobile);
                comm.Parameters.AddWithValue("@fixedNumber", fixedNumber);
                comm.Parameters.AddWithValue("@email", email);
                conn.Open();
                affectedLines = comm.ExecuteNonQuery();
            }
            catch (SqlException ex)
            {
                throw ex;
            }
            finally
            {
                if (conn != null)
                {
                    conn.Close();
                }
            }
            return affectedLines;
        }

        public int executeSupplierEntry(SupplierData supplier)
        {
            String query = "INSERT INTO supplier(name, companyName, address, mobile, homeContact) VALUES (@Name,@CompanyName,@Address,@Mobile,@HomeContact)";

            int affectedLines = 0;
            try
            {
                conn = new SqlConnection(connectionString);
                SqlCommand comm = new SqlCommand(query,conn);
                comm.Parameters.AddWithValue("@Name", supplier.Suppliername);
                comm.Parameters.AddWithValue("@CompanyName", supplier.CompanyName);
                comm.Parameters.AddWithValue("@Address", supplier.Address);
                comm.Parameters.AddWithValue("@Mobile", supplier.MobileContact);
                comm.Parameters.AddWithValue("@HomeContact", supplier.HomeContact);
                conn.Open();
                affectedLines = comm.ExecuteNonQuery();
            }
            catch (SqlException ex)
            {
                throw ex;
            }
            finally
            {
                if (conn != null)
                {
                    conn.Close();
                }
            }
            return affectedLines;
        }

        public int executeSupplierUpdate(SupplierData supplier, String supplierID)
        {
            String query = "UPDATE supplier SET name = @Name, companyName = @CompanyName, address = @Address, mobile = @Mobile, homeContact = @HomeContact WHERE ID = @SupplierID ";

            int affectedLines = 0;
            try
            {
                conn = new SqlConnection(connectionString);
                SqlCommand comm = new SqlCommand(query, conn);
                comm.Parameters.AddWithValue("@SupplierID", Convert.ToInt32(supplierID));
                comm.Parameters.AddWithValue("@Name", supplier.Suppliername);
                comm.Parameters.AddWithValue("@CompanyName", supplier.CompanyName);
                comm.Parameters.AddWithValue("@Address", supplier.Address);
                comm.Parameters.AddWithValue("@Mobile", supplier.MobileContact);
                comm.Parameters.AddWithValue("@HomeContact", supplier.HomeContact);
                conn.Open();
                affectedLines = comm.ExecuteNonQuery();

            }
            catch (SqlException ex)
            {
                throw ex;
            }
            finally
            {
                if (conn != null)
                {
                    conn.Close();
                }
            }
            return affectedLines;
        }
        public int executeDriverEntry(DriverData driver)
        {
            String query = "INSERT INTO driverDetails(firstName, lastName, address, nic, mobileContact, homeContact, salesCenter) VALUES (@FirstName,@LastName,@Address,@NIC, @Mobile,@HomeContact, @SalesCenter)";

            int affectedLines = 0;
            try
            {
                conn = new SqlConnection(connectionString);
                SqlCommand comm = new SqlCommand(query, conn);
                comm.Parameters.AddWithValue("@FirstName",driver.FirstName);
                comm.Parameters.AddWithValue("@LastName", driver.LastName);
                comm.Parameters.AddWithValue("@Address", driver.Address);
                comm.Parameters.AddWithValue("@NIC", driver.NIC);
                comm.Parameters.AddWithValue("@Mobile", driver.Mobile);
                comm.Parameters.AddWithValue("@HomeContact", driver.HomeContact);
                comm.Parameters.AddWithValue("@SalesCenter", driver.SalesCenter);
                conn.Open();
                affectedLines = comm.ExecuteNonQuery();
            }
            catch (SqlException ex)
            {
                throw ex;
            }
            finally
            {
                if (conn != null)
                {
                    conn.Close();
                }
            }
            return affectedLines;
        }
        public int executeVehicleDataEntry(VehicleData vehicle)
        {
            String query = "INSERT INTO vehicleDetails(vehicleNo, type, capacity, registerDate, salesCenter) VALUES (@VehicleNo, @Type, @Capacity, @RegisterDate, @SalesCenter)";

            int affectedLines = 0;
            try
            {
                conn = new SqlConnection(connectionString);
                SqlCommand comm = new SqlCommand(query, conn);
                comm.Parameters.AddWithValue("@VehicleNo",vehicle.VehicleNo);
                comm.Parameters.AddWithValue("@Type", vehicle.Type);
                comm.Parameters.AddWithValue("@Capacity", vehicle.Capacity);
                comm.Parameters.AddWithValue("@RegisterDate", vehicle.Date);
                comm.Parameters.AddWithValue("@SalesCenter", vehicle.SalesCenter);
                conn.Open();
                affectedLines = comm.ExecuteNonQuery();
            }
            catch (SqlException ex)
            {
                throw ex;
            }
            finally
            {
                if (conn != null)
                {
                    conn.Close();
                }
            }
            return affectedLines;
        }


        public int executeSalesCenetrEntry(SalesCenterData salesCenter)
        {
            String query = "INSERT INTO sellingCenterDetails(location, mobile, homeContact, address) VALUES (@Location, @Mobile, @FixedNumber, @Address)";

            int affectedLines = 0;
            try
            {
                conn = new SqlConnection(connectionString);
                SqlCommand comm = new SqlCommand(query, conn);
                comm.Parameters.AddWithValue("@Location", salesCenter.Location);
                comm.Parameters.AddWithValue("@Mobile", salesCenter.Mobile);
                comm.Parameters.AddWithValue("@FixedNumber", salesCenter.FixedNumber);
                comm.Parameters.AddWithValue("@Address", salesCenter.Address);
                conn.Open();
                affectedLines = comm.ExecuteNonQuery();
            }
            catch (SqlException ex)
            {
                throw ex;
            }
            finally
            {
                if (conn != null)
                {
                    conn.Close();
                }
            }
            return affectedLines;
        }

        public int executeItemEntry(DataTable itemTable)
        {
            int affectedLines = 0;
            int lines = 0;
            ItemData item = new ItemData();
            try
            {
                conn = new SqlConnection(connectionString);
                foreach (DataRow row in itemTable.Rows)
                {
                    SqlCommand comm = new SqlCommand("insert into items(itemCode,itemName,category,description) values(@itemCode,@name,@category,@description)", conn);
                    comm.Parameters.AddWithValue("@itemCode", row["itemCode"].ToString());
                    comm.Parameters.AddWithValue("@name", row["itemName"].ToString());
                    comm.Parameters.AddWithValue("@category", row["category"].ToString());
                    comm.Parameters.AddWithValue("@description", row["description"].ToString());
                    conn.Open();
                    lines = comm.ExecuteNonQuery();
                }

                if (lines.Equals(itemTable.Rows.Count))
                    affectedLines = 1;
            }
            catch (SqlException ex)
            {
                throw ex;
            }
            finally
            {
                if (conn != null)
                {
                    conn.Close();
                }
            }
            return affectedLines;
        }
        public void enterStockDetails(DataTable itemTable)
        {
            int qty = 0;
            ItemData item = new ItemData();
            try
            {
                conn = new SqlConnection(connectionString);
                foreach (DataRow row in itemTable.Rows)
                {
                    SqlCommand comm = new SqlCommand("insert into stockDetails(itemName,quantity,itemRegisterDate,lastUpdatedDate) values(@name,@quantity,@registerDate,@updatedDate)", conn);
                    comm.Parameters.AddWithValue("@name", row["itemName"].ToString());
                    comm.Parameters.AddWithValue("@quantity", qty.ToString());
                    comm.Parameters.AddWithValue("@registerDate", System.DateTime.Today);
                    comm.Parameters.AddWithValue("@updatedDate", System.DateTime.Today.ToShortDateString());
                    conn.Open();
                    comm.ExecuteNonQuery();
                }
            }
            catch (SqlException ex)
            {
                throw ex;
            }
            finally
            {
                if (conn != null)
                {
                    conn.Close();
                }
            }
        }

        public void executePurchaseMaster(PurchaseData purchase)
        {
            String query = "INSERT INTO purchaseMaster(invoiceID,supplierName,purchaseDate,totalPrice,totalNoOfItems) VALUES (@InvoiceID,@SupplierName,@PurchaseDate,@TotalPrice,@TotalNoOfItems)";
            int affectedLines = 0;
            try
            {

                conn = new SqlConnection(connectionString);
                SqlCommand comm = new SqlCommand(query, conn);
                conn.Open();
                comm.Parameters.AddWithValue("@InvoiceID", purchase.InvoiceID);
                comm.Parameters.AddWithValue("@SupplierName", purchase.SupplierName);
                comm.Parameters.AddWithValue("@PurchaseDate",purchase.PurchaseDate);
                comm.Parameters.AddWithValue("@TotalPrice", purchase.TotalPrice);
                comm.Parameters.AddWithValue("@TotalNoOfItems", purchase.TotalItems);
                
                affectedLines = comm.ExecuteNonQuery();
            }
            catch (SqlException ex)
            {
                throw ex;
            }
            finally
            {
                if (conn != null)
                {
                    conn.Close();
                }
            }
        }

        public int executePurchaseDetails(DataTable purchaseTable)
        {
            int affectedLines = 0;
            int lines = 0;
            try
            {
                conn = new SqlConnection(connectionString);
                foreach (DataRow row in purchaseTable.Rows)
                {
                    SqlCommand comm = new SqlCommand("INSERT INTO purchaseDetails(invoiceID,itemName,quantity,purchasePrice,salePrice) VALUES (@PurchaseID,@ItemName,@Quantity,@PurchasePrice,@SalePrice)", conn);
                    comm.Parameters.AddWithValue("@PurchaseID",row["purchaseID"].ToString());
                    comm.Parameters.AddWithValue("@ItemName", row["itemName"].ToString());
                    comm.Parameters.AddWithValue("@Quantity", row["quantity"].ToString());
                    comm.Parameters.AddWithValue("@PurchasePrice", row["purchasePrice"].ToString());
                    comm.Parameters.AddWithValue("@SalePrice", row["salePrice"].ToString());
                    conn.Open();
                    lines = comm.ExecuteNonQuery();
                    conn.Close();
                }
                if (lines.Equals(purchaseTable.Rows.Count))
                    affectedLines = 1;
            }
            catch (SqlException ex)
            {
                throw ex;
            }
            finally
            {
                if (conn != null)
                {
                    conn.Close();
                }
            }
            return affectedLines;
        }

        public int executeSalesMaster(SalesData sale)
        {
            String query = "INSERT INTO salesMaster(invoiceID,customerName,date,sellingCenter,totalPrice,totalNoOfItems,transportation) VALUES (@InvoiceID,@CustomerName,@Date,@SellingCenter,@TotalPrice,@TotalNoOfItems,@Transportation)";
            int affectedLines = 0;
            try
            {
                conn = new SqlConnection(connectionString);
                SqlCommand comm = new SqlCommand(query, conn);
                comm.Parameters.AddWithValue("@InvoiceID", sale.InvoiceID);
                comm.Parameters.AddWithValue("@CustomerName", sale.CustomerName);
                comm.Parameters.AddWithValue("@Date", sale.SalesDate);
                comm.Parameters.AddWithValue("@SellingCenter", sale.SellingCenter);
                comm.Parameters.AddWithValue("@TotalPrice", sale.TotalPrice);
                comm.Parameters.AddWithValue("@TotalNoOfItems", sale.TotalItems);
                comm.Parameters.AddWithValue("@Transportation", sale.Transport.ToString());
                conn.Open();
                affectedLines = comm.ExecuteNonQuery();
            }
            catch (SqlException ex)
            {
                throw ex;
            }
            finally
            {
                if (conn != null)
                {
                    conn.Close();
                }
            }
            return affectedLines;
        }

        public int executeSalesDetails(DataTable salesTable)
        {
            int affectedLines = 0;
            int lines = 0;
            try
            {
                conn = new SqlConnection(connectionString);
                conn.Open();
                foreach (DataRow row in salesTable.Rows)
                {
                    SqlCommand comm = new SqlCommand("INSERT INTO salesDetails(invoiceID,itemName,quantity,totalItemPrice) VALUES (@SalesID,@ItemName,@Quantity,@TotalItemPrice)", conn);
                    comm.Parameters.AddWithValue("@SalesID", row["salesID"].ToString());
                    comm.Parameters.AddWithValue("@ItemName", row["itemName"].ToString());
                    comm.Parameters.AddWithValue("@Quantity", row["quantity"].ToString());
                    comm.Parameters.AddWithValue("@TotalItemPrice", row["totalPrice"].ToString());
                    lines = comm.ExecuteNonQuery();
                }
                if (lines.Equals(salesTable.Rows.Count))
                    affectedLines = 1;
            }
            catch (SqlException ex)
            {
                throw ex;
            }
            finally
            {
                if (conn != null)
                {
                    conn.Close();
                }
            }
            return affectedLines;
        }

        public int updatePurchaseStockDetails(DataTable purchaseTable, PurchaseData purchase)
        {
            int affectedLines = 0;
            try
            {
                conn = new SqlConnection(connectionString);
                conn.Open();
                foreach (DataRow row in purchaseTable.Rows)
                {
                    SqlCommand comm = new SqlCommand("UPDATE stockDetails SET quantity = @Quantity, lastUpdatedDate = @UpdatedDate WHERE itemName = @ItemName", conn);
                    comm.Parameters.AddWithValue("@ItemName", row["itemName"].ToString());
                    comm.Parameters.AddWithValue("@Quantity", row["quantity"].ToString());
                    comm.Parameters.AddWithValue("@UpdatedDate", purchase.PurchaseDate);
                    affectedLines = comm.ExecuteNonQuery();
                }
            }
            catch (SqlException ex)
            {
                throw ex;
            }
            finally
            {
                if (conn != null)
                {
                    conn.Close();
                }
            }
            return affectedLines;
        }

        public void updateSalesStockDetails(DataTable salesTable, SalesData sale)
        {
            try
            {
                conn = new SqlConnection(connectionString);
                conn.Open();
                foreach (DataRow row in salesTable.Rows)
                {
                    SqlCommand comm = new SqlCommand("UPDATE stockDetails SET quantity = @Quantity, lastUpdatedDate = @UpdatedDate WHERE itemName = @ItemName", conn);
                    comm.Parameters.AddWithValue("@ItemName", row["itemName"].ToString());
                    comm.Parameters.AddWithValue("@Quantity", row["quantity"].ToString());
                    comm.Parameters.AddWithValue("@UpdatedDate", sale.SalesDate);
                    comm.ExecuteNonQuery();
                }
            }
            catch (SqlException ex)
            {
                throw ex;
            }
            finally
            {
                if (conn != null)
                {
                    conn.Close();
                }
            }
        }

        public int executeTransportaionRequest(transportationData transport)
        {
            String query = "INSERT INTO transportationDetails(customerName, vehicleNo, driverName, date, arrivalTime, destination, distance, income, salesCenter) VALUES (@CustomerName, @VehicleNo, @DriverName, @Date, @ArrivalTime, @Destination, @Distance, @Income, @SalesCenter)";
            int affectedLines = 0;
            try
            {
                conn = new SqlConnection(connectionString);
                SqlCommand comm = new SqlCommand(query, conn);
                comm.Parameters.AddWithValue("@CustomerName", transport.CustomerName);
                comm.Parameters.AddWithValue("@VehicleNo", transport.VehicleNo);
                comm.Parameters.AddWithValue("@DriverName", transport.DriverName);
                comm.Parameters.AddWithValue("@Date", transport.Date);
                comm.Parameters.AddWithValue("@ArrivalTime", transport.ArrivalTime);
                comm.Parameters.AddWithValue("@Destination", transport.Destination);
                comm.Parameters.AddWithValue("@Distance", transport.Distance);
                comm.Parameters.AddWithValue("@Income", transport.Income);
                comm.Parameters.AddWithValue("@SalesCenter", transport.SellingCenter);
                conn.Open();
                affectedLines = comm.ExecuteNonQuery();
            }
            catch (SqlException ex)
            {
                throw ex;
            }
            finally
            {
                if (conn != null)
                {
                    conn.Close();
                }
            }
            return affectedLines;
        }
        public CustomerData getCustomerDetails(String customerID)
        {
            CustomerData customerData = new CustomerData();
            try
            {
                String query = "SELECT * from customer where ID = '" + customerID + "'";
                conn = new SqlConnection(connectionString);
                SqlCommand comm = new SqlCommand(query, conn);
                conn.Open();
                reader = comm.ExecuteReader();
                while (reader.Read())
                {
                    customerData.setFirstName(reader.GetString(1));
                    customerData.setLastName(reader.GetString(2));
                    customerData.setAddress(reader.GetString(3));
                    customerData.setEmail(reader.GetString(4));
                    customerData.setMobileNumer(reader.GetInt32(5));
                    customerData.setFixedNumber(reader.GetInt32(6));
                }
            }
            catch (SqlException ex)
            {
                throw ex;
            }
            finally
            {
                if (conn != null)
                {
                    conn.Close();
                }
            }
            return customerData;
        }
        public SupplierData getSupplierDetails(String supplierID)
        {
            SupplierData supplier = new SupplierData();
            try
            {
                String query = "SELECT * from supplier where ID = @SupplierID";
                conn = new SqlConnection(connectionString);
                SqlCommand comm = new SqlCommand(query, conn);
                comm.Parameters.AddWithValue("@SupplierID", supplierID);
                conn.Open();
                reader = comm.ExecuteReader();
                while (reader.Read())
                {
                    supplier.Suppliername = reader.GetString(1);
                    supplier.CompanyName = reader.GetString(2);
                    supplier.Address = reader.GetString(3);
                    supplier.MobileContact = reader.GetInt32(4);
                    supplier.HomeContact = reader.GetInt32(5);
                }
            }
            catch (SqlException ex)
            {
                throw ex;
            }
            finally
            {
                if (conn != null)
                {
                    conn.Close();
                }
            }
            return supplier;
        }
        public DataTable getDetailsforGrid(String Type)
        {
            String query;
            DataTable table;
            if (Type.Equals("customer"))
            {
                query = "SELECT * from customer";
                table = new DataTable("customer");
            }
            else if (Type.Equals("supplier"))
            {
                query = "SELECT * from supplier";
                table = new DataTable("supplier");
            }
            else if (Type.Equals("items"))
            {
                query = "SELECT * from items";
                table = new DataTable("items");
            }
            else if (Type.Equals("driver"))
            {
                query = "SELECT * from driverDetails";
                table = new DataTable("driverDetails");
            }
            else if (Type.Equals("vehicle"))
            {
                query = "SELECT * from vehicleDetails"; ;
                table = new DataTable("vehicleDetails");
            }
            else if (Type.Equals("salesCenter"))
            {
                query = "SELECT * from sellingCenterDetails"; ;
                table = new DataTable("salesCenterDetails");
            }
            else if (Type.Equals("purchaseDetails"))
            {
                query = "SELECT * from purchaseDetails"; ;
                table = new DataTable("purchaseDetails");
            }
            else if (Type.Equals("purchaseMaster"))
            {
                query = "SELECT * from purchaseMaster"; ;
                table = new DataTable("purchaseMaster");
            }
            else if (Type.Equals("salesDetails"))
            {
                query = "SELECT * from salesDetails"; ;
                table = new DataTable("salesDetails");
            }
            else if (Type.Equals("salesMaster"))
            {
                query = "SELECT * from salesMaster"; ;
                table = new DataTable("salesMaster");
            }
            else if (Type.Equals("transportation"))
            {
                query = "SELECT * from transportationDetails"; ;
                table = new DataTable("transportation");
            }
            else
            {
                query = "SELECT * from stockDetails";
                table = new DataTable("stockDetails");
            }

            try
            {
                conn = new SqlConnection(connectionString);
                SqlCommand comm = new SqlCommand(query, conn);
                conn.Open();
                SqlDataAdapter adapter = new SqlDataAdapter(comm);
                adapter.Fill(table);
                adapter.Dispose();
                return table;
            }
            catch (SqlException ex)
            {
                throw ex;
            }
            finally
            {
                if (conn != null)
                {
                    conn.Close();
                }
            }
        }

        public List<String> getNameListforPurchases(String Type)
        {
            List<String> nameList = new List<String>();
            String query;
            try
            {
                if (Type.Equals("supplier"))
                {
                    query = "SELECT * from supplier";
                }
                else if (Type.Equals("purchaseMaster"))
                {
                    query = "SELECT * from purchaseMaster";
                }
                else
                {
                    query = "SELECT * from items";
                }
                conn = new SqlConnection(connectionString);
                SqlCommand comm = new SqlCommand(query, conn);
                conn.Open();
                reader = comm.ExecuteReader();

                while (reader.Read())
                {
                    nameList.Add(reader.GetString(1));
                }
            }

            catch (SqlException ex)
            {
                throw ex;
            }
            finally
            {
                if (conn!= null)
                {
                    conn.Close();
                }
            }
            return nameList;
        }

        public List<String> getListDetailsforSales(String Type)
        {
            List<String> list = new List<String>();
            String query;
            try
            {
                if (Type.Equals("customer"))
                {
                    query = "SELECT * from customer";
                }
                else if (Type.Equals("item"))
                {
                    query = "SELECT * from items";
                }
                else
                {
                    query = "SELECT * from sellingCenterDetails";
                }
                conn = new SqlConnection(connectionString);
                SqlCommand comm = new SqlCommand(query, conn);
                conn.Open();
                reader = comm.ExecuteReader();

                while (reader.Read())
                {
                   list.Add(reader.GetString(1));
                }
            }

            catch (SqlException ex)
            {
                throw ex;
            }
            finally
            {
                if (conn != null)
                {
                    conn.Close();
                }
            }
            return list;
        }
        public List<String> getRelevantVehicleDetailsForTransportation(String SalesCenter)
        {
            List<String> list = new List<String>();
            String query;
            try
            {
                query = "SELECT * from vehicleDetails where salesCenter = @salesCenter";
                conn = new SqlConnection(connectionString);
                SqlCommand comm = new SqlCommand(query, conn);
                comm.Parameters.AddWithValue("@salesCenter", SalesCenter);
                conn.Open();
                reader = comm.ExecuteReader();
                while (reader.Read())
                {
                    list.Add(reader.GetString(0));
                }
            }

            catch (SqlException ex)
            {
                throw ex;
            }
            finally
            {
                if (conn != null)
                {
                    conn.Close();
                }
            }
            return list;
        }

        public List<String> getRelevantDriverDetailsForTransportation(String SalesCenter)
        {
            List<String> list = new List<String>();
            String query = "SELECT * from driverDetails where salesCenter = @salesCenter";
            try
            {
                conn = new SqlConnection(connectionString);
                SqlCommand comm = new SqlCommand(query, conn);
                comm.Parameters.AddWithValue("@salesCenter", SalesCenter);
                conn.Open();
                reader = comm.ExecuteReader();
                while (reader.Read())
                {
                    list.Add(reader.GetString(1) + " " + reader.GetString(2));
                }
            }

            catch (SqlException ex)
            {
                throw ex;
            }
            finally
            {
                if (conn != null)
                {
                    conn.Close();
                }
            }
            return list;
        }

        public int getItemPrice(String itemName)
        {
            int price = 0;
            String query;
            try
            {
                query = "SELECT salePrice FROM purchaseDetails WHERE itemName = @name";
                conn = new SqlConnection(connectionString);
                SqlCommand comm = new SqlCommand(query, conn);
                comm.Parameters.AddWithValue("@name", itemName);
                conn.Open();
                price = (Int32)comm.ExecuteScalar();
            }

            catch (SqlException ex)
            {
                throw ex;
            }
            finally
            {
                if (conn != null)
                {
                    conn.Close();
                }
            }
            return price;
        }

        public DataTable getPurchaseMasterforReport(String supplierName)
        {
            String query;
            DataTable nameTable = new DataTable();
            try
            {
                query = "SELECT * from purchaseMaster where supplierName = @supplierName";
                conn = new SqlConnection(connectionString);
                SqlCommand comm = new SqlCommand(query, conn);
                comm.Parameters.AddWithValue("@supplierName", supplierName);
                conn.Open();
                SqlDataAdapter adapter = new SqlDataAdapter(comm);
                adapter.Fill(nameTable);
                adapter.Dispose();
                return nameTable;
            }

            catch (SqlException ex)
            {
                throw ex;
            }
            finally
            {
                if (conn != null)
                {
                    conn.Close();
                }
            }
        }
        public DataTable getSalesMasterforReport(String customerName)
        {
            String query;
            DataTable nameTable = new DataTable();
            try
            {
                query = "SELECT * from salesMaster where customerName = @customerName";
                conn = new SqlConnection(connectionString);
                SqlCommand comm = new SqlCommand(query, conn);
                comm.Parameters.AddWithValue("@customerName", customerName);
                conn.Open();
                SqlDataAdapter adapter = new SqlDataAdapter(comm);
                adapter.Fill(nameTable);
                adapter.Dispose();
                return nameTable;
            }

            catch (SqlException ex)
            {
                throw ex;
            }
            finally
            {
                if (conn != null)
                {
                    conn.Close();
                }
            }
        }
    }
}
