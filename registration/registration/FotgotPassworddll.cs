using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Collections;

namespace registration
{
   public class FotgotPassworddll
    {
        public ArrayList getemailids()
        {
            ArrayList al = new ArrayList();
            string cn = "data source=DESKTOP-JPMOVSQ\\SQLEXPRESS;integrated security=true;database=FRSDatabase";
            SqlConnection con = new SqlConnection(cn);

            con.Open();
            string qr = "select Email_ID from registerDB where Email_ID != ' ' ";

            SqlCommand command = new SqlCommand(qr, con);
            //sqldatareader - used to read set of records returned from the sql select query
            SqlDataReader dr = command.ExecuteReader();
            //read method to read records from datareader
            while (dr.Read())
            {
                al.Add(dr["Email_ID"]);
            }

            con.Close();
            return al;
        }



        public string updatepassword(string em, string pass)
        {

            string result = "";
            try
            {

                string cn = "data source=DESKTOP-JPMOVSQ\\SQLEXPRESS;integrated security=true;database=FRSDatabase";
                SqlConnection con = new SqlConnection(cn);
                string qr = "update registerDB set Password='" + pass + "' where Email_ID='" + em + "' ";

                SqlCommand command = new SqlCommand(qr, con);
                con.Open();
                command.ExecuteNonQuery();
                con.Close();
                result = "password changed successfully";
            }
            catch (Exception ee)
            {
                result = ee.ToString();
            }
            return result;
        }



    }
}
