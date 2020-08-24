using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.SqlServer.Server;
using registration;

namespace FRS
{
    public partial class AddFaculty : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        AddFacultydll obj = new AddFacultydll();

        protected void SaveButton_Click(object sender, EventArgs e)
        {
            string fn = FacultyNameTextBox.Text;
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

            string resfn = obj.checkefacultyName(fn,bc);
             if(resfn=="false")
             {
                         string res = obj.saveFaculty(fn, add, ph, gen, bc);
                         StatusLabel.Text = res;                
             }
             else 
             {               
                    StatusLabel.Text = "Faculty with this Name and Batch Name is already exists, please enter another Faculty Name and Batch Code";               
             }            
        }

        protected void CancelButton_Click(object sender, EventArgs e)
        {            
            FacultyNameTextBox.Text = string.Empty;
            AddressTextBox.Text = "";
            PhoneNumberTextBox.Text = "";
            MaleRadioButton.Checked = false;
            FemaleRadioButton.Checked = false;
            OtherRadioButton.Checked = false;
        }
    }
}