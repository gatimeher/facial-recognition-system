using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using registration;
namespace FRS
{
    public partial class AddStudent : System.Web.UI.Page
    {
      
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        AddStudentDll ob = new AddStudentDll();
        protected void CancelButton_Click(object sender, EventArgs e)
        {
            FacultyNameTextBox.Text = string.Empty;
            AddressTextBox.Text = "";
            PhoneNumberTextBox.Text = "";
            RadioButton1.Checked = false;
            RadioButton2.Checked = false;
            RadioButton3.Checked = false;
        }

        protected void SaveButton_Click(object sender, EventArgs e)
        {
           
            string n = FacultyNameTextBox.Text;
            string add = AddressTextBox.Text;
            string ph = PhoneNumberTextBox.Text;
            string gen = "";
            if (RadioButton1.Checked)
            {
                gen = RadioButton1.Text;
                RadioButton2.Visible = false;
                RadioButton3.Visible = false;
            }
            else if (RadioButton2.Visible)
            {
                gen = RadioButton2.Text;
                RadioButton1.Visible = false;
                RadioButton3.Visible = false;
            }

            string res = ob.saveStudent(n, add, ph, gen);
            Label1.Text = res;
        }
    }
}