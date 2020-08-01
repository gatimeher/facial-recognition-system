using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;

namespace registration
{
    public class StudentMarkManualAttendancedll
    {
        public string batchcode { get; set; }
        public string studentname { get; set; }
        public string subject { get; set; }
        public string intime { get; set; }
        public string outtime { get; set; }
        public string date { get; set; }
        public string attendance { get; set; }

        string result;
        SqlConnection con;

        public StudentMarkManualAttendancedll()
        {
            con = new SqlConnection("data source=DESKTOP-JPMOVSQ\\SQLEXPRESS;integrated security=true;database=FRSDatabase;");
        }
        public string StudentMarkManual(string bc, string n, string sub, string inT, string outT, string dt, string attend)
        {
            batchcode = bc;
            studentname = n;
            subject = sub;
            intime = inT;
            outtime = outT;
            date = dt;
            attendance = attend;

            string result = "";
            try
            {
                con.Open();
                string qr = "insert into StudentMarkManualAttendanceDB(Batch_Code,Student_Name,Subject,In_Time,Out_Time,Date,Attendance)values('" + batchcode + "','" + studentname + "','" + subject + "','" + intime + "','" + outtime + "','" + date + "','" + attendance + "')";
                SqlCommand command = new SqlCommand(qr, con);
                command.ExecuteNonQuery();
                result = "Attendance Marked Successfully";

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
