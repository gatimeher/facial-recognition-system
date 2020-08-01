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
    public partial class FacultyDateWiseAttendance : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
           /* if (Session["email"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            */
            con.ConnectionString = "data source=DESKTOP-JPMOVSQ\\SQLEXPRESS;integrated security=true;database=FRSDatabase";
            showdata();
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
        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            string str1 = Session["email"].ToString();
            // Response.Write("str1 " + str1);
            string query1 = "select First_Name,Last_Name from registerDB where Email_ID= '" + str1 + "'";
            SqlCommand cmm = new SqlCommand(query1, con);

            SqlDataReader dr = cmm.ExecuteReader();//new

            string fn = "";
            while (dr.Read())
            {
                fn = dr["First_Name"].ToString();
                fn = fn + " " + dr["Last_Name"].ToString();
            }

            dr.Close();
            con.Close();
            string query2 = "select * from FacultyMarkManualAttendanceDB where Faculty_Name='" + fn + "'";
            SqlDataAdapter da = new SqlDataAdapter(query2, con);

            string rq = "select * from FacultyMarkManualAttendanceDB where Faculty_Name='" + fn + "'and date between'" + TextBox1.Text + "'and'" + TextBox2.Text + "'";
            SqlCommand cmd = new SqlCommand(rq, con);
            SqlDataAdapter da1 = new SqlDataAdapter(cmd);
            DataSet ds2 = new DataSet();
            da1.Fill(ds2);
            GridView1.DataSource = ds2.Tables[0];
            GridView1.DataBind();
        }
    }
}