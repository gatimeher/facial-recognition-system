using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Collections;

namespace registration
{
    public class FacultyMarkManualAttendancedll
    {
        public string batchcode { get; set; }
        public string facultyname { get; set; }
        public string subject { get; set; }
        public string intime { get; set; }
        public string outtime { get; set; }
        public string date { get; set; }
        public string attendance { get; set; }

        string result;
        SqlConnection con;

        public FacultyMarkManualAttendancedll()
        {
            con = new SqlConnection("data source=DESKTOP-JPMOVSQ\\SQLEXPRESS;integrated security=true;database=FRSDatabase;");
        }
        public string facultyMarkManual(string bc, string n, string sub, string inT, string outT, string dt, string attend)
        {
            batchcode = bc;
            facultyname = n;
            subject = sub;
            intime = inT;
            outtime = outT;
            date = dt;
            attendance = attend;

            string result = "";
            try
            {
                con.Open();
                string qr = "insert into FacultyMarkManualAttendanceDB(Batch_Code,Faculty_Name,Subject,In_Time,Out_Time,Date,Attedenace)values('" + batchcode + "','" + facultyname + "','" + subject + "','" + intime + "','" + outtime + "','" + date + "','" + attendance + "')";
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
        /*
        public ArrayList getfacultyname()
        {
            ArrayList al = new ArrayList();
            con.Open();
            string qr = "select Faculty_Name from FacultyMarkManualAttendanceDB where Faculty_Name != ' ' ";

            SqlCommand command = new SqlCommand(qr, con);
            //sqldatareader - used to read set of records returned from the sql select query
            SqlDataReader dr = command.ExecuteReader();
            //read method to read records from datareader
            while (dr.Read())
            {
                al.Add(dr["Faculty_Name"]);
            }

            con.Close();
            return al;
        }
        */
    }
}