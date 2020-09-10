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
    public partial class FacultyDashboard : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                con.ConnectionString = "data source=DESKTOP-6RGINGV\\SQLEXPRESS;integrated security=true;database=FRSDatabase2";
                //con.Open();
                showdata();
            }
        }
        public void showdata()
        {
            /*
            cmd.CommandText = "select * from registerDB where Email_ID='" + Session["email"] + "'";
            cmd.Connection = con;
            sda.SelectCommand = cmd;
            sda.Fill(ds);
            Label1.Text = "Welcome" + "&nbsp;" + ds.Tables[0].Rows[0]["First_Name"].ToString() + "&nbsp;" + ds.Tables[0].Rows[0]["Last_Name"].ToString() + "&nbsp;" + "to Student Dashboard";
            */

            con.Open();
            cmd.CommandText = "select * from registerDB where Email_ID='" + Session["email"] + "'";
            cmd.Connection = con;
            sda.SelectCommand = cmd;
            sda.Fill(ds);
            Label1.Text = "Welcome" + "&nbsp;" + ds.Tables[0].Rows[0]["First_Name"].ToString() + "&nbsp;" + ds.Tables[0].Rows[0]["Last_Name"].ToString() + "&nbsp;" + "to Faculty Dashboard";
            con.Close();
        }

        protected void GenrateStudentAttendanceReportButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("GenerateStudentAttendanceReport.aspx");
        }

        protected void GenrateBatchWiseReportButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("GenrateBatchWiseAttendance.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
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
            GridView1.DataBind();
        }
    }
}