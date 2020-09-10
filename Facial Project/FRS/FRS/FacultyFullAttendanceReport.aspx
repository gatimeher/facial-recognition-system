<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FacultyFullAttendanceReport.aspx.cs" Inherits="FRS.FacultyFullAttendanceReport" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            font-size: x-large;
        }
        .auto-style2 {
            font-weight: bold;
        }
        .auto-style3 {
            width: 60%;
        }
        .auto-style4 {
            font-size: medium;
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
            <strong>Your Full Attendace Record<br />
            <br />
            <asp:Button ID="Button1" runat="server" CssClass="auto-style2" OnClick="Button1_Click" Text="Click here to view" />
            </strong>
        </div>
        <p>
            &nbsp;</p>
        <table align="center" class="auto-style3">
            <tr>
                <td>
                    <asp:GridView ID="GridView1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" CssClass="auto-style4">
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
            </tr>
        </table>
    </form>
</body>
</html>
