using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace FRS
{
    public partial class BatchAttendanceReport : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con1 = new SqlConnection("data source=DESKTOP-6RGINGV\\SQLEXPRESS;integrated security=true;database=FRSDatabase2;");
            //connection();
            con1.Open();
            SqlCommand cmnd1 = new SqlCommand();
            //string query1 = "select distinct s.Student_Name, s.Address, s.Phone_Number, s.Gender, s.Batch_Code from AddFacultyDB as f inner join AddStudentDB as s on s.Batch_Code = f.Batch_Code where f.Batch_Code = '" + DropDownList1.SelectedValue +"'";

            string query1 = "  select distinct s.Batch_Code, f.Faculty_Name, s.Subject, s.Student_Name, s.In_Time, s.Out_Time, s.Date, s.Attendance from AddFacultyDB as f inner join StudentMarkManualAttendanceDB as s on s.Batch_Code = f.Batch_Code where f.Batch_Code = '" + Button1 + "'";


            SqlDataAdapter da = new SqlDataAdapter(query1, con1);
            DataSet ds = new DataSet();
            //cmnd1.ExecuteNonQuery();
            da.Fill(ds);
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
            con1.Close();
        }
    }
}