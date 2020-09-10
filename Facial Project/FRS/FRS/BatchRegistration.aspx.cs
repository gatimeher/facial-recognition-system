using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using registration;

namespace FRS
{
    public partial class BatchRegistration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SaveButton_Click(object sender, EventArgs e)
        {
            
            string tn = FacultyNameDropDownList.Text;
            string s = SubjectDropDownList.Text;
            string bt = BatchTimeDropDownList.Text;
            string bc = BatchCodeDropDownList.Text;

            Batchdll reg = new Batchdll();

            string res = reg.Batchregistration( tn, s, bt,bc);
            StatusLabel.Text = res;
            
        }

        protected void CancelButton_Click(object sender, EventArgs e)
        {
            FacultyNameDropDownList.ClearSelection();
            SubjectDropDownList.ClearSelection();
            BatchTimeDropDownList.ClearSelection();
            BatchCodeDropDownList.ClearSelection();
        }
    }
}