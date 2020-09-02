using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
namespace FRS
{
    public partial class FaceAttendanceReport : System.Web.UI.Page
    {

        SqlConnection con;
        DataSet ds;

        public bool IsPostback { get; private set; }


        private void rep_bind()
        {
            /*  //SqlConnection con = new SqlConnection("data source=DESKTOP-JPMOVSQ\SQLEXPRESS;integrated security=true;database=FRSDatabase");
              connection();
              SqlCommand cmnd = new SqlCommand();
              // string query = "select distinct s.Student_Name,s.Batch_Code,f.Email_ID,f.DateTime,f.Attendance from AddStudentDB as s inner join FaceAttendance as f on s.Email_ID = f.Email_ID where f.Student_Name  '" + TextBox1.Text + "%'";

              string query = "select distinct s.Student_Name,s.Batch_Code,f.Email_ID,f.DateTime,f.Attendance from AddStudentDB as s inner join FaceAttendance as f on s.Email_ID = f.Email_ID where s.Email_ID '" + TextBox1.Text + "'";

              //select distinct s.Student_Name,s.Batch_Code,f.Email_ID,f.DateTime,f.Attendance from AddStudentDB as s
              // inner join FaceAttendance as f on s.Email_ID = f.Email_ID where f.Email_ID = 'uk@gmail.com';

              SqlDataAdapter da = new SqlDataAdapter(query, con);
              DataSet ds = new DataSet();

              cmnd.ExecuteNonQuery();
              da.Fill(ds);
              GridView1.DataSource = ds.Tables[0];
              GridView1.DataBind();
              //GridView1.DataSource = ds;*/
        }

        private void connection()
        {
            throw new NotImplementedException();
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {

            /* DataReader dr = new DataReader();
             if (dr.HasRows)
             {
                 Response.Write("Hello");
                 dr.Read();
                 rep_bind();
                 GridView1.Visible = true;
                 TextBox1.Text = "";
                 Label1.Text = "Record Found Successfully";
             }
             else
             {
                 GridView1.Visible = true;
                 Label1.Visible = true;
                 Label1.Text = "The search Term " + TextBox1.Text + " Is Not Available in the Records";
             }*/




            string maincon = ConfigurationManager.ConnectionStrings["MyConnection"].ConnectionString;
            SqlConnection con = new SqlConnection(maincon);
            //string query = "select distinct s.Student_Name,s.Batch_Code,f.Email_ID,f.DateTime,f.Attendance from AddStudentDB as s inner join FaceAttendance as f on s.Email_ID = f.Email_ID where f.Student_Name='" + TextBox1.Text + "'";
            string query = "select distinct s.Student_Name,s.Batch_Code,f.Email_ID,f.DateTime,f.Attendance from AddStudentDB as s inner join faceattendance1 as f on s.Email_ID = f.Email_ID where f.Email_ID='" + TextBox1.Text + "'";

            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataAdapter da1 = new SqlDataAdapter(cmd);
            DataSet ds2 = new DataSet();

            da1.Fill(ds2);

            GridView1.DataSource = ds2.Tables[0];
            GridView1.DataBind();

            if (ds2.Tables[0].Rows.Count > 0)//changes
            {
                Label1.Text = "Record Found Successfully";

            }
            else
            {
                Label1.Text = "The search Term " + TextBox1.Text + " does not Found";
                
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string maincon = ConfigurationManager.ConnectionStrings["MyConnection"].ConnectionString;
            SqlConnection con = new SqlConnection(maincon);
            //string query = "select distinct s.Student_Name,s.Batch_Code,f.Email_ID,f.DateTime,f.Attendance from AddStudentDB as s inner join FaceAttendance as f on s.Email_ID = f.Email_ID where f.Student_Name='" + TextBox1.Text + "'";
            string query = "select distinct f.Faculty_Name,f.Batch_Code,a.Email_ID,a.DateTime,a.Attendance from AddFacultyDB as f inner join faceattendance1 as a on f.Email_ID = a.Email_ID where a.Email_ID='" + TextBox1.Text + "'";

            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataAdapter da1 = new SqlDataAdapter(cmd);
            DataSet ds2 = new DataSet();

            da1.Fill(ds2);

            GridView1.DataSource = ds2.Tables[0];
            GridView1.DataBind();

            if (ds2.Tables[0].Rows.Count > 0)//changes
            {
                Label1.Text = "Record Found Successfully";

            }
            else
            {
                Label1.Text = "The search Term " + TextBox1.Text + " does not Found";

            }
        }
    }
}