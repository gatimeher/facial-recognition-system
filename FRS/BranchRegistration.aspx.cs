using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using registration;



namespace FRS
{
    public partial class BranchRegistration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SaveButton_Click(object sender, EventArgs e)
        {
            
            string bn = BranchNameDropDownList.Text;
            string bh = BranchHeadDropDownList.Text;
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
            string s = StateDropDownList.Text;
            string c = CityDropDownList.Text;
            string ba = BranchAddressTextBox.Text;
            string dobr = DateofBranchRegistrationTextBox.Text;
            string bc = BranchCodeDropDownList.Text;

            Branchdll reg = new Branchdll();
            
           string res = reg.Branchregistration( bn, bh, g,s, c, ba, dobr, bc);
            StatusLabel.Text = res;

        }

        protected void CancelButton_Click(object sender, EventArgs e)
        {
            /*BranchNameDropDownList.SelectedValue = "";
            BranchHeadDropDownList.SelectedValue = "";
            MaleRadioButton.Checked = false;
            FemaleRadioButton.Checked = false;
            OtherRadioButton.Checked = false;
            StateDropDownList.SelectedValue = "";
            CityDropDownList.SelectedValue = "";
            BranchAddressTextBox.Text = "";
            DateofBranchRegistrationTextBox.Text = "";
            BranchCodeDropDownList.SelectedValue = "";*/


            BranchNameDropDownList.ClearSelection();
            BranchHeadDropDownList.ClearSelection();
            MaleRadioButton.Checked= false;
            FemaleRadioButton.Checked = false;
            OtherRadioButton.Checked = false;
            StateDropDownList.ClearSelection();
            CityDropDownList.ClearSelection();
            BranchAddressTextBox.Text = " ";
            DateofBranchRegistrationTextBox.Text = "";
            BranchCodeDropDownList.ClearSelection();
            





        }
    }
}