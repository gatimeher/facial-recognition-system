using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;


namespace FRS
{
    public partial class GenrateBatchWiseAttendance : System.Web.UI.Page
    { 
       /* SqlConnection con;
        DataSet ds;

        public bool IsPostback { get; private set; }

/*
    //Search Name coding
    private void rep_bind()
    {
        SqlConnection con = new SqlConnection("data source=DESKTOP-JPMOVSQ\\SQLEXPRESS;integrated security=true;database=FRSDatabase");
        connection();
        SqlCommand cmnd = new SqlCommand();
        string query = "select Faculty_Name,Batch_Code from AddFacultyDB where Faculty_Name='"+ SelectTeacherNameDropDownList + "'";
        SqlDataAdapter da = new SqlDataAdapter(query, con);
        DataSet ds = new DataSet();
        
        cmnd.ExecuteNonQuery();
        da.Fill(ds);
        
    }*/
       /* private void connection()
        {
            throw new NotImplementedException();
        }*/
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void SelectTeacherNameDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            //TextBox1.Text = DropDownList1.SelectedValue;
            //Label1.Text = TextBox1.Text;
            
        }
        

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlConnection con1 = new SqlConnection("data source=DESKTOP-JPMOVSQ\\SQLEXPRESS;integrated security=true;database=FRSDatabase");
            //connection();
            con1.Open();
            SqlCommand cmnd1 = new SqlCommand();
            //string query1 = "select distinct s.Student_Name, s.Address, s.Phone_Number, s.Gender, s.Batch_Code from AddFacultyDB as f inner join AddStudentDB as s on s.Batch_Code = f.Batch_Code where f.Batch_Code = '" + DropDownList1.SelectedValue +"'";

            // string query1 = "select distinct s.Student_Name, s.Address, s.Phone_Number, s.Gender, s.Batch_Code from AddFacultyDB as f inner join AddStudentDB as s on s.Batch_Code = f.Batch_Code where f.Batch_Code = '" + DropDownList1.SelectedValue + "'";

            string query1 = "select distinct smma.Batch_Code,f.Faculty_Name, smma.Student_Name, smma.Subject, smma.In_Time, smma.Out_Time, smma.Date, smma.Attendance from StudentMarkManualAttendanceDB as smma inner join AddFacultyDB as f on smma.Batch_Code = f.Batch_Code where f.Batch_Code ='" + DropDownList1.SelectedValue + "'";

            SqlDataAdapter da = new SqlDataAdapter(query1, con1);
            DataSet ds = new DataSet();
            //cmnd1.ExecuteNonQuery();
            da.Fill(ds);
            GridView2.DataSource = ds.Tables[0];
            GridView2.DataBind();
            con1.Close();

            //select s.Student_Name ,s.Address ,s.Phone_Number,s.Gender, s.Batch_Code from AddStudentDB as s
            //left join AddFacultyDB as f on s.Batch_Code = f.Batch_Code where f.Batch_Code = 'Python2020'

           
        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}