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
    public partial class GenerateAttendanceReport : System.Web.UI.Page
    {
        SqlConnection con;
        DataSet ds;

        public bool IsPostback { get; private set; }


        //Search Name coding
        private void rep_bind()
        {
            //SqlConnection con = new SqlConnection("data source=DESKTOP-JPMOVSQ\SQLEXPRESS;integrated security=true;database=FRSDatabase");
            connection();
            SqlCommand cmnd = new SqlCommand();
            string query = "select * from StudentMarkManualAttendanceDB where Student_Name like '" + EnterStudentNameTextBox.Text + "%'";
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            DataSet ds = new DataSet();

            cmnd.ExecuteNonQuery();
            da.Fill(ds);
            GridView1.DataSource = ds;
        }
        private void connection()
        {
            throw new NotImplementedException();
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SearchRecordDateWiseButton_Click(object sender, EventArgs e)
        {
           
        }

        protected void SearchRecordDateWiseButton_Click1(object sender, EventArgs e)
        {
            string maincon = ConfigurationManager.ConnectionStrings["MyConnection"].ConnectionString;
            SqlConnection con = new SqlConnection(maincon);
            string rq = "select * from StudentMarkManualAttendanceDB where Student_Name='" + EnterStudentNameTextBox.Text + "'and date between'" + SelectStartDateTextBox.Text + "'and'" + SelectEndDateTextBox.Text + "'";
            SqlCommand cmd = new SqlCommand(rq, con);
            SqlDataAdapter da1 = new SqlDataAdapter(cmd);
            DataSet ds2 = new DataSet();
            da1.Fill(ds2);
            GridView2.DataSource = ds2.Tables[0];
            GridView2.DataBind();
        }

        protected void SearchButton_Click(object sender, EventArgs e)
        {

            /*DataReader dr = new DataReader();
            if (dr.HasRows)
            {
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

        }
    }
}