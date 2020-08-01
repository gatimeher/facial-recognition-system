using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;

namespace registration
{
    public class Register
    {
        //properties
        
        public int userid { get; set; }
        public string firstname { get; set; }
        public string lastname { get; set; }
        public string address { get; set; }
        public string contactnumber { get; set; }
        public string gender { get; set; }
        public string emailid { get; set; }
        public string password { get; set; }
        public string conformpassword { get; set; }
        public string dateofbirth { get; set; }
        public string dateofjoining { get; set; }
        public string idproof { get; set; }
        public string idproofnumber { get; set; }        
        public string role { get; set; }
        string cn;
        SqlConnection con;
        public Register()
        {
            cn = "data source=DESKTOP-JPMOVSQ\\SQLEXPRESS;integrated security=true;database=FRSDatabase";
            con = new SqlConnection(cn);

        }
        string result = " ";
        
        public string checkemailid(string em)
        {
            //string result = "";

            try
            {
                con.Open();
                string qr = "select count(*) from registerDB where Email_ID='" + em + "'";
                SqlCommand command = new SqlCommand(qr, con);
                //the query will return a single calculated value
                // so for this use executescalar method of sqlcommand class
                int r = Convert.ToInt32(command.ExecuteScalar());
                if (r == 1)
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

    
        //method to save registration detaile
        public string Saveregistration(string f, string l, string add, string mob, string e, string gen, string pass, string cpass, string dob, string doj, string id, string idnum,string r)
        {
            
            firstname = f;
            lastname = l;
            address = add;
            contactnumber = mob;
            emailid = e;
            gender = gen;
            password = pass;
            conformpassword = cpass;
            dateofbirth = dob;
            dateofjoining = doj;
            idproof = id;
            idproofnumber = idnum;           
            role = r;

            string result = "";
            //creating method checkemailid to check email id existornot
            try
            {
                con.Open();

                string qr = "insert into registerDB(First_Name,Last_Name,Address,Contact_Number,Gender,Email_ID,Password,Conform_Password,Date_Of_Birth,Date_Of_Joining,ID_Proof,ID_Proof_Number,Role) values('" + firstname + "','" + lastname + "','" + address + "','" + contactnumber + "','" + gender + "','" + emailid + "','" + password + "','" + conformpassword + "','" + dateofbirth + "','" + dateofjoining + "','" + idproof + "','" + idproofnumber + "','" + role + "')";
                //Create an object of sql command class for writing insurt query
                SqlCommand command = new SqlCommand(qr, con);
                //use the executenonquery method of sqlcommand class to execute the above query
                command.ExecuteNonQuery();
                result ="registration successfull";
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