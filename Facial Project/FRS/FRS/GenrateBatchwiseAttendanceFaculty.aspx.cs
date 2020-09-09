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
    public partial class GenrateBatchwiseAttendanceFaculty : System.Web.UI.Page
    {

        /*SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();*/
        protected void Page_Load(object sender, EventArgs e)
        {
         /*   if (Session["email"] == null)
            {
                Response.Redirect("Lo.aspx");
            }
            else
            {
                con.ConnectionString = "data source=DESKTOP-6RGINGV\\SQLEXPRESS;integrated security=true;database=FRSDatabase2";
                //con.Open();
                showdata();
            }*/
        }
       /* public void showdata()
        {
            con.Open();
            cmd.CommandText = "select * from registerDB where Email_ID='" + Session["email"] + "'";
            cmd.Connection = con;
            sda.SelectCommand = cmd;
            sda.Fill(ds);
            //Label1.Text = "Welcome" + "&nbsp;" + ds.Tables[0].Rows[0]["First_Name"].ToString() + "&nbsp;" + ds.Tables[0].Rows[0]["Last_Name"].ToString() + "&nbsp;" + "to Faculty Dashboard";
            con.Close();
        }*/

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
           /* SqlConnection con1 = new SqlConnection("data source=DESKTOP-6RGINGV\\SQLEXPRESS;integrated security=true;database=FRSDatabase2");
            //connection();
            con1.Open();
            SqlCommand cmnd1 = new SqlCommand();
            //string query1 = "select distinct s.Student_Name, s.Address, s.Phone_Number, s.Gender, s.Batch_Code from AddFacultyDB as f inner join AddStudentDB as s on s.Batch_Code = f.Batch_Code where f.Batch_Code = '" + DropDownList1.SelectedValue +"'";

            // string query1 = "select distinct s.Student_Name, s.Address, s.Phone_Number, s.Gender, s.Batch_Code from AddFacultyDB as f inner join AddStudentDB as s on s.Batch_Code = f.Batch_Code where f.Batch_Code = '" + DropDownList1.SelectedValue + "'";

            string query1 = "select distinct smma.Batch_Code,f.Faculty_Name, smma.Subject, smma.In_Time, smma.Out_Time, smma.Date, smma.Attedenace from AddFacultyDB as f inner join FacultyMarkManualAttendanceDB as smma on f.Faculty_Name = smma.Faculty_Name where f.Batch_Code ='" + DropDownList2.SelectedValue + "'";

            SqlDataAdapter da = new SqlDataAdapter(query1, con1);
            DataSet ds = new DataSet();
            //cmnd1.ExecuteNonQuery();
            da.Fill(ds);
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
            con1.Close()*/
        }
        
       
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {



            /* SqlDataReader dr = cmd.ExecuteReader();
             string fn = "";

             while (dr.Read())
             {
                 fn = dr["Faculty_Name"].ToString();
             }
             dr.Close();*/
           SqlConnection con = new SqlConnection("data source=DESKTOP-6RGINGV\\SQLEXPRESS;integrated security=true;database=FRSDatabase2");

            con.Open();

            SqlCommand cmd = new SqlCommand();

            //string fn = DropDownList1.Text;
            string fn = Session["First_Name"].ToString()+" "+ Session["Last_Name"].ToString();

           // Response.Write("fn=" + fn);



            string query2 = "select * from StudentMarkManualAttendanceDB where Faculty_Name='" + fn + "'";
            SqlDataAdapter da1 = new SqlDataAdapter(query2, con);
            DataSet ds1 = new DataSet();
            da1.Fill(ds1);
            GridView1.DataSource = ds1.Tables[0];
            GridView1.DataBind();
            con.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            /*con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            string fn = "";

            while (dr.Read())
            {
                fn = dr["first_name"].ToString();
            }
            dr.Close();
            con.Close();
            string query2 = "select * from registerDB where First_Name='" + fn + "'";
            SqlDataAdapter da = new SqlDataAdapter(query2, con);
            DataSet ds1 = new DataSet();
            da.Fill(ds1);
            GridView1.DataSource = ds1.Tables[0];
            GridView1.DataBind();*/
        }
    }
}