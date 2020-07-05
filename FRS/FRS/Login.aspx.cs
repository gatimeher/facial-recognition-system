using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using registration;

namespace FRS
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged1(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string email = TextBox1.Text;
            string pass = TextBox2.Text;

            Logindll l = new Logindll();
            string r = l.checklogin(email, pass);
            /* if (r == "true")
             {
                 StatusLabel.Text = "login successfull";
             }
             else
             {
                 StatusLabel.Text = "invalid credentials , try again";
             }
             */
            //StatusLabel.Text = r;
            if (r == "admin")
            {
                Session["Email_ID"] = email; //storing the loggedin email id in session variable
                Response.Redirect("AdminDashboard.aspx");

                StatusLabel.Text = "login successfull";
            }
            else if (r == "student")
            {
                Session["Email_ID"] = email; //storing the loggedin email id in session variable
                Response.Redirect("StudentDashboard.aspx");

                StatusLabel.Text = "login successfull";
            }
            else if (r == "faculty")
            {
                Session["Email_ID"] = email; //storing the loggedin email id in session variable
                Response.Redirect("FacultyDashboard.aspx");

                StatusLabel.Text = "login successfull";
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

        
    }
}