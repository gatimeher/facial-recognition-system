using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FRS
{
    public partial class AdminDashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void AddFaculty_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddFaculty.aspx");
        }

        protected void AddNewSubject_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddNewSubject.aspx");
        }

        protected void BatchRegistration_Click(object sender, EventArgs e)
        {
            Response.Redirect("BatchRegistration.aspx"); 
        }

        protected void MarkManualAttedance_Click(object sender, EventArgs e)
        {
            Response.Redirect("MarkManualAttedance.aspx"); 
        }

        protected void BranchRegistration_Click(object sender, EventArgs e)
        {
            Response.Redirect("BranchRegistration.aspx");
        }

        protected void AddStudent_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddStudent.aspx");
        }

        protected void UpdateStudentRecord_Click(object sender, EventArgs e)
        {
            Response.Redirect("UpdateStudentRecord.aspx");
        }

        protected void UpdateFacultyRecord_Click(object sender, EventArgs e)
        {
            Response.Redirect("UpdateFacultyRecord.aspx");
        }

        protected void UpdateBranch_Click(object sender, EventArgs e)
        {
            Response.Redirect("UpdateBranch.aspx");
        }

        protected void UpdateBatch_Click(object sender, EventArgs e)
        {
            Response.Redirect("UpdateBatch.aspx");
        }

        protected void AddStudentDetails_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewStudentDetails.aspx");            
        }

        protected void AddFacultyDetails_Click(object sender, EventArgs e)
        {            
                Response.Redirect("ViewFacultyDetails.aspx");
        }

        protected void GenrateBatchWiseReportButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("GenrateBatchWiseAttendance.aspx");
        }

        protected void GenrateStudentAttendanceReportButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("GenerateStudentAttendanceReport.aspx");
        }
    }
}