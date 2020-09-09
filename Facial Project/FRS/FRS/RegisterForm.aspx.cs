using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using registration;

namespace FRS
{
    public partial class RegisterForm : System.Web.UI.Page
    { 
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        Register reg = new Register();

       // AddFacultydll af = new AddFacultydll();
        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            /*
            if (RoleDropDownList.SelectedItem.Text == "Faculty")
            {
                string fn = FacultyNameDropDownList.Text;
               /* Label2.Enabled = true;
                FacultyNameDropDownList.Enabled = true;
                Label3.Enabled = false;
                StudentNameDropDownList.Enabled = false;
                
            }
            else if (RoleDropDownList.SelectedItem.Text == "Student")
            {
                string fn = StudentNameDropDownList.Text;
        /*Label2.Enabled = false;
        FacultyNameDropDownList.Enabled = false;
        Label3.Enabled = true;
        StudentNameDropDownList.Enabled = true;

    }
*/
            
            string dfn = FacultyNameDropDownList.Text;
            string dsn = StudentNameDropDownList.Text;
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
            string r = RoleDropDownList.Text;

            string res1 = reg.checkemailid(em);
            //string role = af.checkefacultyName(fn);
            
            //condition for check duplicate email id
           if (res1 == "false")
            {
                if (dfn == fn && dsn == fn)
                {
                    //Response.Redirect("registration.aspx?email=" + em);
                    string res = reg.Saveregistration(fn, ln, add, cnum, em, g, pass, cpass, dob, dojoin, id, idnum, r);
                    StatusLabel.Text = res;
                }
                else
                {
                    StatusLabel.Text = "User with this Name is not exists, please enter selected Name";
                }
            }
            else
            {
                StatusLabel.Text = "User with this Email already exists, please enter another Email";
                EmailTextBox.Text = "";
                EmailTextBox.Focus();
            }
          
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
        }

        protected void CancelButton_Click(object sender, EventArgs e)
        {

            FirstNameTextBox.Text = " ";
            LastNameTextBox.Text = " ";
            AddressTextBox.Text = " ";
            ContactNumberTextBox.Text = " ";
            EmailTextBox.Text = " ";
            MaleRadioButton.Checked = false;
            FemaleRadioButton.Checked = false;
            OtherRadioButton.Checked = false;
           // PasswordTextBox.Text = " ";
            //ConformPasswordTextBox.Text = " ";
            DateOfBirthTextBox.Text = " ";
            DateOfJoiningTextBox.Text = " ";
            IdProofDropDwomList.ClearSelection();
            IdProofNumberTextBox.Text = " ";
            RoleDropDownList.ClearSelection();

        }

        protected void RoleDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (RoleDropDownList.SelectedItem.Text == "Faculty")
            {
                string fn = FacultyNameDropDownList.Text;
                Label2.Enabled = true;
                FacultyNameDropDownList.Enabled = true;
                Label3.Enabled = false;
                StudentNameDropDownList.Enabled = false;
            }
            else if (RoleDropDownList.SelectedItem.Text == "Student")
            {
                string fn = StudentNameDropDownList.Text;
                Label2.Enabled = false;
                FacultyNameDropDownList.Enabled = false;
                Label3.Enabled = true;
                StudentNameDropDownList.Enabled = true;
            }
            else
            {
                Label2.Enabled = false;
                FacultyNameDropDownList.Enabled = false;
                Label3.Enabled = false;
                StudentNameDropDownList.Enabled = false;
            }

        }
    }
}