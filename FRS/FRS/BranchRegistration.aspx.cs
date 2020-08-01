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
            string bc = BranchCodeTextBox.Text;
            string bn = BranchNameTextBox.Text;
            string bh = BranchHeadTextBox.Text;
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
            Branchdll reg = new Branchdll();
            
            string res = reg.Branchregistration(bc, bn, bh, g,s, c, ba, dobr);
            StatusLabel.Text = res;

        }
    }
}