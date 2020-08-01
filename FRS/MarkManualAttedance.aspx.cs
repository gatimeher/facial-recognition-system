using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Collections;
using System.Web.UI.WebControls;
using registration;

namespace FRS
{
    public partial class MarkManualAttedance : System.Web.UI.Page
    {
        StudentMarkManualAttendancedll obj = new StudentMarkManualAttendancedll();
        FacultyMarkManualAttendancedll fmma = new FacultyMarkManualAttendancedll();
        protected void Page_Load(object sender, EventArgs e)
        {

            //StudentNameDropDownList.Items.Insert(0,"-- Select --");
            //StudentNameDropDownList.Items.Add("Please Select a product");
           // StudentNameDropDownList.Items.Insert(0, new ListItem("Please Select a product", "Please Select a product"));
        }
       
        string res = "";
        protected void SaveButton_Click(object sender, EventArgs e)
        {
           
            string bc = BatchCodeDropDownList.Text;
            string sn = StudentNameDropDownList.Text;
            string fn = FacultyNameDropDownList.Text;
            string sub = SubjectDropDownList.Text;
            string inT = InTimeTextBox.Text;
            string outT = OutTimeTextBox.Text;
            string d = DateandTimeTextBox.Text;
            string atten = AttendanceDropDownList.Text;                
            
            
            if (RoleDropDownList.SelectedItem.Text == "Faculty")
            {
                StudentNameDropDownList.Visible = true;
                res = fmma.facultyMarkManual(bc,fn, sub, inT, outT, d, atten);

            }
            else if (RoleDropDownList.SelectedItem.Text == "Student")
            {
               // FacultyNameDropDownList.Visible = false;
                StudentNameDropDownList.Visible = true;
                res = obj.StudentMarkManual(bc, sn, sub, inT, outT, d, atten);
            }
            
            Label1.Text = res;
        }

        protected void CancelButton_Click(object sender, EventArgs e)
        {
            BatchCodeDropDownList.ClearSelection();
            StudentNameDropDownList.ClearSelection();
            SubjectDropDownList.ClearSelection();
            InTimeTextBox.Text = "";
            OutTimeTextBox.Text = "";
            DateandTimeTextBox.Text = "";
            AttendanceDropDownList.ClearSelection();
            
        }

        protected void SubjectDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void StudentNameDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void RoleDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (RoleDropDownList.SelectedItem.Text == "Faculty")
            {
                Label2.Enabled = true;
                FacultyNameDropDownList.Enabled = true;
                Label3.Enabled = false;
                StudentNameDropDownList.Enabled = false;
            }
            else if (RoleDropDownList.SelectedItem.Text == "Student")
            {
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