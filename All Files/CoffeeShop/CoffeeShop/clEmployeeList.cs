using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;


namespace CoffeeShop
{
    public class clEmployeeList
    {
        private int _employee_id;
        private string _employee_first_name;
        private string _employee_last_name;

        public int EMPLOYEE_ID
        {
            get { return _employee_id; }
            set { _employee_id = value; }
        }

        public string EMPLOYEE_FIRST_NAME
        {
            get { return _employee_first_name; }
            set { _employee_first_name = value; }
        }

        public string EMPLOYEE_LAST_NAME
        {
            get { return _employee_last_name; }
            set { _employee_last_name = value; }
        }



        public List<clEmployeeList> GetAll()
        {
            List<clEmployeeList> results = new List<clEmployeeList>();


            SqlConnection con = new SqlConnection("Data Source=RUVISE;Initial Catalog=COFFEE_SHOP;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("SELECT EMPLOYEE_ID,EMPLOYEE_FIRST_NAME, EMPLOYEE_LAST_NAME FROM  EMPLOYEES", con);
            using (con)
            {
                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();

                while (reader.Read())
                {
                    clEmployeeList newEmployee = new clEmployeeList();
                    newEmployee.EMPLOYEE_ID = (int)reader["EMPLOYEE_ID"];
                    newEmployee.EMPLOYEE_FIRST_NAME = (string)reader["EMPLOYEE_FIRST_NAME"];
                    newEmployee.EMPLOYEE_LAST_NAME = (string)reader["EMPLOYEE_LAST_NAME"];




                    results.Add(newEmployee);
                }
            }
            con.Close();
            return results;
        }
    }
}
