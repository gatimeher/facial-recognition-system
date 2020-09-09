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
    public partial class savephoto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            
            try
            {
                //   string title = Request.Form["title"];
                string cn = "data source=DESKTOP-JPMOVSQ\\SQLEXPRESS;integrated security=true;database=FRSDatabase";
                SqlConnection con = new SqlConnection(cn);
                string qry = "insert into DatabaseWebcam (Email_ID,Scan_Photo) values(@Email_ID, @Scan_Photo)";
                SqlCommand cmd = new SqlCommand(qry, con);
                // create Parameters
                cmd.Parameters.AddWithValue("@Email_ID", Request.Form["Email_ID"]);
                SqlParameter photoParam = new SqlParameter("@Scan_Photo", SqlDbType.Image);
                String source = Request.Form["photo"];
                // remove extra chars at the beginning
                source = source.Substring(source.IndexOf(",") + 1);
                Response.Write("source = " + source + "<br>");
                //converting the image into byte array
                byte[] data = Convert.FromBase64String(source);
                photoParam.Value = data;
                cmd.Parameters.Add(photoParam);

                //Open connection and execute insert query.
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }
            catch (Exception ex)
            {
                Trace.Write(ex.Message);
            }
            
        }
        
    }
}