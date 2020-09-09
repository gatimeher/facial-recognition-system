using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using registration;


//using System.ComponentModel;
//using System.Data;
//using System.Drawing;

using System.Text;
//using System.Threading.Tasks;

//using System.Data.SqlClient;


namespace FRS
{
    public partial class registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void Student_CheckedChanged(object sender, EventArgs e)
        {

        }
        Register reg = new Register();
        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            string fn = FirstNameTextBox.Text;
            string ln = LastNameTextBox.Text;
            string add = AddressTextBox.Text;
            string cnum = ContactNumberTextBox.Text;
            string em = EmailTextBox.Text;
            string g = "";
            if (MaleRadioButton.Checked)
            {
                g = MaleRadioButton.Text;
                FemaleRadioButton.Visible = false;
                OtherRadioButton.Visible = false;
            }
            else if (FemaleRadioButton.Visible)
            {
                g = FemaleRadioButton.Text;
                MaleRadioButton.Visible = false;
                OtherRadioButton.Visible = false;
            }

            string pass = PasswordTextBox.Text;
            string cpass = ConformPasswordTextBox.Text;
            string dob = DateOfBirthTextBox.Text;
            string dojoin = DateOfJoiningTextBox.Text;
            string id = IdProofDropDwomList.Text;
            string idnum = IdProofNumberTextBox.Text;           
            string r = "";
            if (AdminRadioButton.Checked)
            {
                r = AdminRadioButton.Text;
                FacultyRadioButton.Visible = false;
                StudentRadioButton.Visible = false;
            }
            else if (FacultyRadioButton.Visible)
            {
                r = FacultyRadioButton.Text;
                AdminRadioButton.Visible = false;
                StudentRadioButton.Visible = false;
            }
            else if (StudentRadioButton.Visible)
            {
                r = StudentRadioButton.Text;
                AdminRadioButton.Visible = false;
                FacultyRadioButton.Visible = false;
            }

            string res1 = reg.checkemailid(em);
            if (res1 == "false")
            {

                // Response.Redirect("registration.aspx?email=" + em);
                string res = reg.Saveregistration(fn, ln, add, cnum, em, g, pass, cpass, dob, dojoin, id, idnum, r);
                StatusLabel.Text = res;

            }
            else
            {
                StatusLabel.Text = "User with this Email already exists, please enter another Email";
                EmailTextBox.Text = "";
                EmailTextBox.Focus();

            }
               
            //code to check whether this email id exists or not

             
             
               
        }

        protected void EmailTextBox_TextChanged(object sender, EventArgs e)
        {

        }
    }
}