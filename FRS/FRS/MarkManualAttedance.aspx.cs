using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using registration;

namespace FRS
{
    public partial class MarkManualAttedance : System.Web.UI.Page
    {
        ManualAttendanceDLL obj = new ManualAttendanceDLL();
        protected void Page_Load(object sender, EventArgs e)
        {
            

        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void SaveButton_Click(object sender, EventArgs e)
        {
            string code = DropDownList1.Text;
            string name = DropDownList3.Text;
            string subject = DropDownList4.Text;
            string inTime = TextBox1.Text;
            string outTime = TextBox2.Text;
            string date = DateandTimeTextBox.Text;
            string attendance = DropDownList2.Text;
            string res = obj.MarkManual(code, name, subject, inTime, outTime, date, attendance);
            Label1.Text = res;
        }

        protected void CancelButton_Click(object sender, EventArgs e)
        {
            DropDownList1.ClearSelection();
            DropDownList3.ClearSelection();
            DropDownList4.ClearSelection();
            TextBox1.Text = "";
            TextBox2.Text = "";
            DateandTimeTextBox.Text = "";
            DropDownList2.ClearSelection();
        }
    }
}