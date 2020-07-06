using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;

namespace registration
{
    public class Logindll
    {
        //properties

        public string emailid { get; set; }
        public string password { get; set; }
        string cn;
        SqlConnection con;

        public Logindll()
        {
            cn = "data source=DESKTOP-JPMOVSQ\\SQLEXPRESS;integrated security=true;database=FRSDatabase";
            con = new SqlConnection(cn);
        }
        //creating method to check login credentials
        public string checklogin(string em, string pa)
        {
            string result = "";

            try
            {
                con.Open();
                string qr = "select count(*) from registerDB where Email_ID='" + em + "' and Password='" + pa + "'";
                SqlCommand command = new SqlCommand(qr, con);
                //the query will return a single calculated value
                // so for this use executescalar method of sqlcommand class
                int r = Convert.ToInt32(command.ExecuteScalar());
                if (r == 1)
                {
                    string qr1 = "select role from registerDB where Email_ID='" + em + "' and Password='" + pa + "'";
                    SqlCommand command1 = new SqlCommand(qr1, con);
                    string role = Convert.ToString(command1.ExecuteScalar());
                    result = role;

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
