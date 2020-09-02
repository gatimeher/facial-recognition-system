using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;

namespace registration
{
    public class AddStudentdll
    {
        public string studentname { get; set; }
        public string address { get; set; }
        public string phone { get; set; }
        public string gender { get; set; }
        public string batchcode { get; set; }

        public string email { get; set; }

        public string result;
        SqlConnection con;
        public AddStudentdll()
        {
            con = new SqlConnection("data source=DESKTOP-6RGINGV\\SQLEXPRESS;integrated security=true;database=FRSDatabase;");
        }
        public string saveStudent(string sn, string add, string ph, string gen,string bc, string eml)
        {
            studentname = sn;
            address = add;
            phone = ph;
            gender = gen;
            batchcode = bc;
            email = eml;

            string result = " ";
            try
            {
                con.Open();
                string qr = "insert into AddStudentDB(Student_Name,Address,Phone_Number,Gender,Batch_Code,Email_ID) values('" + studentname + "','" + address + "','" + phone + "','" + gender + "','" + batchcode + "','" + email + "')";
                SqlCommand command = new SqlCommand(qr, con);
                command.ExecuteNonQuery();
                result = "Student Added Successfully";
            }
            catch (Exception ee)
            {
                result = ee.ToString();
            }
            finally
            {
                con.Close();
            }
            return result;
        }
    }
}
