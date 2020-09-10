using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using registration;

namespace FRS
{
    public partial class forgotPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                ArrayList al = new ArrayList();
                FotgotPassworddll ad = new FotgotPassworddll();
                al = ad.getemailids();
                DropDownList1.Items.Clear();
                foreach (string s in al)
                {
                    DropDownList1.Items.Add(s);
                }
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            FotgotPassworddll ad = new FotgotPassworddll();
            StausLabel.Text = ad.updatepassword(DropDownList1.Text, TextBox2.Text);


        }
    }
}