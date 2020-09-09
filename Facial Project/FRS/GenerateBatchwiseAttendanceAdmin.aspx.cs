using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace FRS
{
    public partial class GenerateBatchwiseAttendanceAdmin : System.Web.UI.Page
    {


        SqlConnection con;
        DataSet ds;


        //Search Name coding
        private void rep_bind()
        {
            //SqlConnection con = new SqlConnection("data source=DESKTOP-JPMOVSQ\SQLEXPRESS;integrated security=true;database=FRSDatabase");
            connection();
            SqlCommand cmnd = new SqlCommand();
            string query = "select * from StudentMarkManualAttendanceDB where Faculty_Name like '" + TextBox1.Text + "%'";
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataReader dr = new DataReader();
            if (dr.HasRows)
            {
                dr.Read();
                rep_bind();
                GridView1.Visible = true;
                TextBox1.Text = "";
                Label1.Text = "Record Found Successfully";
            }
            //else
            //{
            //    GridView1.Visible = true;
            //    Label1.Visible = true;
            //    Label1.Text = "The search Term " + TextBox1.Text + " Is Not Available in the Records";
            //}
        }
    }
}