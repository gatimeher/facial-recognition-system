using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;

namespace registration
{
    public class Batchdll
    {

        public string teachername { get; set; }
        public string subject { get; set; }
        public string batchtime { get; set; }
        public string batchcode { get; set; }

        string cn;
        SqlConnection con;
        public Batchdll()
        {
            string cn = "data source=DESKTOP-JPMOVSQ\\SQLEXPRESS;integrated security=true;database=FRSDatabase";
            con = new SqlConnection(cn);
        }
        string result = " ";
        public string Batchregistration(string tn, string s, string bt, string bc)
        {

            teachername = tn;
            subject = s;
            batchtime = bt;
            batchcode = bc;

            string result = "";
            //creating method checkemailid to check email id existornot
            try
            {
                con.Open();

                string qr = "insert into BatchDB(Teacher_Name,Subject,Batch_Time,Batch_Code) values('" + teachername + "','" + subject + "','" + batchtime + "','" + batchcode + "')";
                //Create an object of sql command class for writing insurt query
                SqlCommand command = new SqlCommand(qr, con);
                //use the executenonquery method of sqlcommand class to execute the above query
                command.ExecuteNonQuery();
                result = "Batch register successfull";
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
