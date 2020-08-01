using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using registration;

namespace FRS
{
    public partial class AddNewSubject : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        Addsubdll sb = new Addsubdll();
        protected void SaveButton_Click(EventArgs e)
        {
           
        }

        protected void CancelButton_Click(object sender, EventArgs e)
        {
            SubjectNameTextBox.Text = " ";
            DescriptionTextBox.Text = " ";
        }

        protected void SaveButton_Click(object sender, EventArgs e)
        {
            string na = SubjectNameTextBox.Text;
            string di = DescriptionTextBox.Text;

            string res = sb.saveSub(na, di);
            Label1.Text = res;
        }
    }
}