<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FullAttendanceReportStudentDashboard.aspx.cs" Inherits="FRS.FullAttendanceReportStudentDashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <style type="text/css">
        .auto-style1 {
            text-align: center;
            font-size: x-large;
        }

button,
[type="button"],
[type="reset"],
[type="submit"] {
  -webkit-appearance: button; }

button,
input {
  overflow: visible; }

input,
button,
select,
optgroup,
textarea {
  margin: 0;
  font-family: inherit;
  font-size: inherit;
  line-height: inherit; }

  *,
  *::before,
  *::after {
    text-shadow: none !important;
    -webkit-box-shadow: none !important;
    box-shadow: none !important; }
  
*,
*::before,
*::after {
  -webkit-box-sizing: border-box;
  box-sizing: border-box; }

        .auto-style3 {
            width: 60%;
        }
        .auto-style5 {
            font-size: medium;
            font-weight: bold;
        }
        body {
  background-color: rgb(255, 183, 131);
}

         .auto-style6 {
             font-size: large;
         }

         .auto-style7 {
             font-size: small;
         }

    </style>
</head>
<body>

         <center><u>
      
             <ul class="navbar-nav mr-auto">
	        	<a href="StudentDashboard.aspx" class="nav-link pl-0"><strong><span class="auto-style6">Profile</span></strong></a>	        		        		        	        	
	        </ul>
      </u></center>


    <form id="form1" runat="server">
        <div class="auto-style1">
            <strong>Your Full Attendace Record<em><br />
            <br />
            <asp:Button ID="Button1" runat="server" CssClass="auto-style5" OnClick="Button1_Click1" Text="Click here to view" />
            <br />
            <br />
            </em>
            </strong>
            <table align="center" class="auto-style3">
                <tr>
                    <td>
                        <asp:GridView ID="GridView1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" CssClass="auto-style7">
                            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#FFF1D4" />
                            <SortedAscendingHeaderStyle BackColor="#B95C30" />
                            <SortedDescendingCellStyle BackColor="#F1E5CE" />
                            <SortedDescendingHeaderStyle BackColor="#93451F" />
                        </asp:GridView>
                    </td>
            <strong>
                    <em>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <br />
            </em></strong>
        </div>
    </form>
</body>
</html>
