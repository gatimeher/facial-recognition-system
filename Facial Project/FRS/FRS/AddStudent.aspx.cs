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
        AddStudentdll ob = new AddStudentdll();
        protected void SaveButton_Click(object sender, EventArgs e)
        {
            string sn = StudentNameTextBox.Text;
            string add = AddressTextBox.Text;
            string ph = PhoneNumberTextBox.Text;
            string gen = "";
            if (MaleRadioButton.Checked)
            {
                gen = MaleRadioButton.Text;
                FemaleRadioButton.Visible = false;
                OtherRadioButton.Visible = false;
            }
            else if (FemaleRadioButton.Visible)
            {
                gen = FemaleRadioButton.Text;
                MaleRadioButton.Visible = false;
                OtherRadioButton.Visible = false;
            }
            string bc = BatchCodeDropDownList.Text;
            string res = ob.saveStudent(sn, add, ph, gen,bc);
            StatusLabel.Text = res;
        }

        protected void CancelButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddStudent.aspx");

            StudentNameTextBox.Text = string.Empty;
            AddressTextBox.Text = "";
            PhoneNumberTextBox.Text = "";
            MaleRadioButton.Checked = false;
            FemaleRadioButton.Checked = false;
            OtherRadioButton.Checked = false;
        }
    }
}