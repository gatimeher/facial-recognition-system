using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;

namespace registration
{
    public class AddFacultydll
    {
        public string facultyname { get; set; }
        public string address { get; set; }
        public string phone { get; set; }
        public string gender { get; set; }
        public string batchcode { get; set; }

        public string result;
        SqlConnection con;
        public AddFacultydll()
        {
            con = new SqlConnection("data source=DESKTOP-JPMOVSQ\\SQLEXPRESS;integrated security=true;database=FRSDatabase;");
        }        
        public string saveFaculty(string fn, string add, string ph, string gen,string bc)
        {
            facultyname = fn;
            address = add;
            phone = ph;
            gender = gen;
            batchcode = bc;

            string result = " ";
            try
            {
                con.Open();
                string qr = "insert into AddFacultyDB(Faculty_Name,Address,Phone_Number,Gender,Batch_Code) values('" + facultyname + "','" + address + "','" + phone + "','" + gender + "','" + batchcode + "')";
                SqlCommand command = new SqlCommand(qr, con);
                command.ExecuteNonQuery();
                result = "Faculty Added Successfully";
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
        public string checkefacultyName(string fn,string bc)
        {
            //string result = "";
           // facultyname = fn;
           // batchcode = bc;
           

            try
            {
                con.Open();
                string qr = "select count(*) from AddFacultyDB where Faculty_Name='" + fn + "'and Batch_Code= '"+ bc +"'";
                SqlCommand command = new SqlCommand(qr, con);
                //the query will return a single calculated value
                // so for this use executescalar method of sqlcommand class
                int r = Convert.ToInt32(command.ExecuteScalar());
                if (r > 0)
                {
                    result = "true";
                }
                else
                {
                    result = "false";
                }
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
