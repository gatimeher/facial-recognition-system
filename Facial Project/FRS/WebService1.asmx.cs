using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.Script.Serialization;
using System.IO;
using System.Data.SqlClient;

namespace FRS
{
    /// <summary>
    /// Summary description for WebService1
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]

    public class EmployeesRecord
    {
        /*
        public int ID { get; set; }
        public string Name { get; set; }
        public string Position { get; set; }
        public string Office { get; set; }
        public int Age { get; set; }
        public int Salary { get; set; }
        */
        public string title { get; set; }
       // public string email { get; set; }//changes for email
      //  public string name { get; set; }    //changes

    }

    public class WebService1 : System.Web.Services.WebService
    {

        public object File { get; private set; }

        [WebMethod]
        public void GetAllEmployee()
        {
            SqlConnection con1 = new SqlConnection(@"Data Source=DESKTOP-6RGINGV\SQLEXPRESS;database=FRSdatabase;Integrated Security=True");

            // SqlCommand cmd1 = new SqlCommand("Select email_id,scan_photo from registerdb", con1);
            SqlCommand cmd1 = new SqlCommand("Select full_name,scan_photo from registerdb", con1); //changes
            //SqlCommand cmd1 = new SqlCommand("Select email_id,full_name,scan_photo from registerdb", con1);//changes for email
            con1.Open();
            SqlDataReader dr1 = null;
            dr1 = cmd1.ExecuteReader();
            if (dr1.HasRows)
            {
                while (dr1.Read())
                {

                    //string title = dr1["email_id"].ToString();
                    string title = dr1["full_name"].ToString();//changes
                    //string tit = dr1["email_id"].ToString();//changes for email
                    title = title + ".jpg";
                    byte[] img = (byte[])dr1["scan_photo"];
                    var imgBlob = img; // Load the image binary array from the database
                                       //File.WriteAllBytes(Server.MapPath("data/file.jpg"), imgBlob);

                   // string name = dr1["Full_Name"].ToString();          //changes

                     System.IO.File.WriteAllBytes("C:/xampp/htdocs/fcjm/img/" + title, imgBlob);
                    //System.IO.File.WriteAllBytes("C:/xampp/htdocs/fcjm/img/" + title, imgBlob,name);//chenges
                    string base64string = Convert.ToBase64String(img, 0, img.Length);

                    //  Label1.Text += "<img src='data:image/png;base64," + base64string + "' alt='No Image' width='200px' vspace='5px' hspace='5px' />";
                }
            }
            con1.Close();

            List<EmployeesRecord> employeelist = new List<EmployeesRecord>();

            // string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            string CS = "server=DESKTOP-6RGINGV\\SQLEXPRESS;integrated security=true;database=frsdatabase";
            using (SqlConnection con = new SqlConnection(CS))
            {
                try
                {
                    //SqlCommand cmd = new SqlCommand("select email_id from registerdb", con);
                    SqlCommand cmd = new SqlCommand("select full_name from registerdb", con);//changes
                    //SqlCommand cmd = new SqlCommand("select email_id,full_name from registerdb", con);//changes for email

                    // cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    con.Open();

                    SqlDataReader rdr = cmd.ExecuteReader();

                    while (rdr.Read())
                    {

                        EmployeesRecord employee = new EmployeesRecord();
                        /*
                        employee.ID = Convert.ToInt32(rdr["ID"]);
                        employee.Name = rdr["Name"].ToString();
                        //  Label1.Text = "name " + employee.Name;
                        employee.Position = rdr["Position"].ToString();
                        employee.Office = rdr["Office"].ToString();
                        employee.Age = Convert.ToInt32(rdr["Age"]);
                        employee.Salary = Convert.ToInt32(rdr["Salary"]);
                        */
                        //employee.title = rdr["email_id"].ToString();
                        employee.title = rdr["full_name"].ToString();//changes
                        //employee.email = rdr["email_id"].ToString();//changes for email
                        employeelist.Add(employee);
                    }
                }
                catch (Exception ee)
                {
                    // Label1.Text = ee.ToString();
                }
            }

            JavaScriptSerializer js = new JavaScriptSerializer();
            Context.Response.Write(js.Serialize(employeelist));
        }
        [WebMethod]
        public void saveattendance(string title)
       // public void saveattendance(string title,string email)//changes for email
        {
            // Taking a string 
            // String str = "Geeks, For Geeks";
            
            String[] spearator = { " (" };
            Int32 count = 2;

            // using the method 
            String[] strlist = title.Split(spearator, count,
                   StringSplitOptions.RemoveEmptyEntries);
            string t = strlist[0];
            //string em = strlist[1];//changes for email
            /*  foreach (String s in strlist)
              {
                  t = t + s;
              }
              */
            //string title = title;
            //string str= "saved";
            string str = null;
            string ti = DateTime.Now.ToString();
           // string fn = strlist[0];//changes
            string CS = "server=DESKTOP-6RGINGV\\SQLEXPRESS;integrated security=true;database=frsdatabase";
            using (SqlConnection con = new SqlConnection(CS))
            {
                try
                {
                    // string q = "insert into faceattendance1(email_id,datetime,attendance) values('"+t+"', '"+ti+"', 'present')";
                     string q = "insert into faceattendance1(full_name,datetime,attendance) values('" + t + "', '" + ti + "', 'present')";//changes
                    //string q = "insert into faceattendance1(email_id,full_name,datetime,attendance) values('" + em + "','" + t + "', '" + ti + "', 'present')";//changes fo email

                    // string q = "insert into FaceAttendance values('" + t + "', '" + ti + "', 'present')";
                    //string q = "insert into faceattendance values('" + t + "', '" + ti + "', 'present','" + fn + "')";//changes

                    SqlCommand cmd = new SqlCommand(q, con);
                    // cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    str = "saved";
                }
                catch (Exception ee)
                {
                    str = ee.ToString();
                }
            }
                    JavaScriptSerializer js = new JavaScriptSerializer();
            Context.Response.Write(js.Serialize(str));
        }

    }
}
