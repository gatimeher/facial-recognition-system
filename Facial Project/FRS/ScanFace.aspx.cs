using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace FRS
{
    public partial class ScanFace : System.Web.UI.Page
    {
        DataSet ds;
        protected void Page_Load(object sender, EventArgs e)
        {
            /*
            try
            {
                SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-JPMOVSQ\\SQLEXPRESS;database=FRSDatabase;Integrated Security=True");
                SqlDataAdapter da = new SqlDataAdapter("select * from registerDB", con);
                ds = new DataSet();
                da.Fill(ds, "registerDB");
                DataList1.DataSource = ds.Tables[0];
                DataList1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
            */
            try
            {
                string cn = "data source=DESKTOP-JPMOVSQ\\SQLEXPRESS;integrated security=true;database=FRSDatabase";
                SqlConnection con = new SqlConnection(cn);
                SqlDataAdapter da = new SqlDataAdapter("select * from registerDB", con);
                ds = new DataSet();
                da.Fill(ds, "registerDB");
                DataList1.DataSource = ds.Tables[0];
                DataList1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
            
        }
        
        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void DataList1_ItemDataBound(object sender, EventArgs e)
        {
          
            
        }

        protected void DataList1_ItemDataBound(object sender, DataListItemEventArgs e)
        {

            Image img = e.Item.FindControl("Scan_Photo") as Image;
            DataRow row = ds.Tables[0].Rows[e.Item.ItemIndex];
            byte[] bytes = (byte[])row["Scan_Photo"];
            string base64String = Convert.ToBase64String(bytes, 0, bytes.Length);
            img.ImageUrl = "data:image/png;base64," + base64String;

            /*
            Image img = e.Item.FindControl("Scan_Photo") as Image;
            DataRow row = ds.Tables[0].Rows[e.Item.ItemIndex];
            byte[] bytes = (byte[])row["Scan_Photo"];

            string base64String = Convert.ToBase64String(bytes, 0, bytes.Length);
            img.ImageUrl = "data:image/png;base64," + base64String;
            */
        }
    }
}