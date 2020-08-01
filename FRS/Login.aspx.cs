using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using registration;
using System.Data.SqlClient;
using System.Data;


namespace FRS
{
    public partial class Login : System.Web.UI.Page
    {

        //changes
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] != null)
            {
                Response.Redirect("homePage.aspx");
            }
            else
                con.ConnectionString = "data source=DESKTOP-JPMOVSQ\\SQLEXPRESS;integrated security=true;database=FRSDatabase";
            con.Open();
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged1(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string email = TextBox1.Text.Trim();
            string pass = TextBox2.Text;

            Logindll l = new Logindll();
            string r = l.checklogin(email, pass);


            cmd.CommandText = "select * from registerDB where Email_ID='" + TextBox1.Text + "'and Password='" + TextBox2.Text + "'";
            cmd.Connection = con;
            sda.SelectCommand = cmd;
            sda.Fill(ds, "registerDB");
            if (ds.Tables[0].Rows.Count > 0)//changes
            {
                Session["email"] = email;
                foreach (DataRow dr in ds.Tables[0].Rows)
                {
                    Session["First_Name"] = dr["first_name"].ToString();
                    Session["Last_Name"] = dr["last_name"].ToString();
                }
                //Response.Redirect("StudentDashboard.aspx");
                //Response.Write(r);
                if (r == "Student")
                {
                    Session["Email_ID"] = email; //storing the loggedin email id in session variable
                    Response.Redirect("StudentDashboard.aspx");

                    // StatusLabel.Text = "login successfull";
                }
                // StatusLabel.Text = r;
                else if (email == "gati@gmail.com" && pass == "July@123")
                {
                    Session["Email_ID"] = email; //storing the loggedin email id in session variable
                    Response.Redirect("AdminDashboard.aspx");
                }

                else if (r == "Faculty")
                {
                    Session["Email_ID"] = email; //storing the loggedin email id in session variable
                    Response.Redirect("FacultyDashboard.aspx");

                    //StatusLabel.Text = "login successfull";
                }
                else if (r == "false")
                {

                    StatusLabel.Text = "invalid credentials , try again";
                }
                else
                {
                    StatusLabel.Text = r;
                }


            }

            con.Close();

           
        }
    }
}