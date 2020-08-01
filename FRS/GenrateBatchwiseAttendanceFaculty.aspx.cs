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
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ShowButton_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("data source=DESKTOP-JPMOVSQ\\SQLEXPRESS;integrated security=true;database=FRSDatabase");

            con.Open();

            SqlCommand cmd = new SqlCommand();

            //string fn = DropDownList1.Text;
            string fn = Session["First_Name"].ToString() + " " + Session["Last_Name"].ToString();

            // Response.Write("fn=" + fn);



            string query2 = "select * from StudentMarkManualAttendanceDB where Faculty_Name='" + fn + "'";
            SqlDataAdapter da1 = new SqlDataAdapter(query2, con);
            DataSet ds1 = new DataSet();
            da1.Fill(ds1);
            GridView1.DataSource = ds1.Tables[0];
            GridView1.DataBind();
            con.Close();
        }
    }
}