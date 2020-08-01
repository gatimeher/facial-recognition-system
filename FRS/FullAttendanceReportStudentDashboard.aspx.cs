using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using registration;


namespace FRS
{
    public partial class FullAttendanceReportStudentDashboard : System.Web.UI.Page
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
                con.ConnectionString = "data source =DESKTOP-JPMOVSQ\\SQLEXPRESS; integrated security = true; database = FRSDatabase";
                showdata();
            }
        }
        public void showdata()
             
        {
            con.Open();
            cmd.CommandText = "select * from registerDB where Email_ID='" + Session["email"] + "'";
            cmd.Connection = con;
            sda.SelectCommand = cmd;
            sda.Fill(ds);
            //Label1.Text = "Welcome" + "&nbsp;" + ds.Tables[0].Rows[0]["First_Name"].ToString() + "&nbsp;" + ds.Tables[0].Rows[0]["Last_Name"].ToString() + "&nbsp;" + "to Student Dashboard";

            con.Close();
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            con.Open();
            string str1 = Session["email"].ToString();
            // Response.Write("str1 " + str1);
            string query1 = "select first_name,last_name from registerdb where email_id= '" + str1 + "'";
            SqlCommand cmm = new SqlCommand(query1, con);
            SqlDataReader dr = cmd.ExecuteReader();
            string fn = "";
            while (dr.Read())
            {
                fn = dr["First_Name"].ToString();
                fn = fn+" " +dr["Last_Name"].ToString();
            }
           // Response.Write("fn=" + fn);

            dr.Close();
            con.Close();
            string query2 = "select * from FacultyMarkManualAttendanceDB where Faculty_Name='" + fn + "'";
            SqlDataAdapter da = new SqlDataAdapter(query2, con);
            DataSet ds1 = new DataSet();


            da.Fill(ds1);
            GridView1.DataSource = ds1.Tables[0];
            GridView1.DataBind();

        }
    }
}