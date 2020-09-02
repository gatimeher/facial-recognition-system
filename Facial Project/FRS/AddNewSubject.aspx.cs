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
            AddSubjectdll sb = new AddSubjectdll();
        protected void SaveButton_Click(object sender, EventArgs e)
        {
            string na = SubjectNameDropDownList.Text;
            string di = DescriptionTextBox.Text;

            string res = sb.saveSub(na, di);
            StatusLabel.Text = res;
        }

        protected void CancelButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddNewSubject.aspx");
            //SubjectNameDropDownList.SelectedValue = " ";
            //DescriptionTextBox.Text = " ";
        }
    }
}