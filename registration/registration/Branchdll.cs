using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;

namespace registration
{
     public class Branchdll
    {
        
        public string branchname { get; set; }
        public string branchhead { get; set; }
        public string gender { get; set; }
        public string state { get; set; }
        public string city { get; set; }
        public string branchaddress { get; set; }
        public string dateofbranchregistration { get; set; }
        public string branchcode { get; set; }
        string cn;
        SqlConnection con;
        public Branchdll()
        {
            cn = "data source=DESKTOP-JPMOVSQ\\SQLEXPRESS;integrated security=true;database=FRSDatabase";
            con = new SqlConnection(cn);
        }
        string result = "";
        public string Branchregistration( string bn, string bh, string g,string s, string c,string ba, string dobr, string bc)
        {
            
            branchname = bn;
            branchhead = bh;
            gender = g;
            state = s;
            city = c;
            branchaddress = ba;
            dateofbranchregistration = dobr;
            branchcode = bc;

            string result = " ";
            //creating method checkemailid to check email id existornot
            try
            {
                con.Open();

                string qr = "insert into BranchDB(Branch_Name,Branch_Head,Gender,State,City,Branch_Address,Date_Of_Branch_Registration,Branch_Code) values('" + branchname + "','" + branchhead + "','" + gender + "','" + state + "','" + city + "','" + branchaddress + "','" + dateofbranchregistration + "','" + branchcode + "')";
                //Create an object of sql command class for writing insurt query
                SqlCommand command = new SqlCommand(qr, con);
                //use the executenonquery method of sqlcommand class to execute the above query
                command.ExecuteNonQuery();
                result = "Branch register successfull";
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
