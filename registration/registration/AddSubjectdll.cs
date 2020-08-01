using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;

namespace registration
{
    public class AddSubjectdll
    {
        public string subjectname { get; set; }
        public string discription { get; set; }


        public string result;
        SqlConnection con;

        public AddSubjectdll()
        {
            con = new SqlConnection("data source=DESKTOP-JPMOVSQ\\SQLEXPRESS;integrated security=true;database=FRSDatabase;");
        }

        public string saveSub(string sn, string diss)
        {
            subjectname = sn;
            discription = diss;


            string result = " ";
            try
            {
                con.Open();
                string qr = "insert into AddSubjectDB(Subject_name,Discription) values('" + subjectname + "','" + diss + "')";
                SqlCommand command = new SqlCommand(qr, con);
                command.ExecuteNonQuery();
                result = "Subject Added Successfully";
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
