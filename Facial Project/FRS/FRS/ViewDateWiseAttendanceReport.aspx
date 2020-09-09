<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewDateWiseAttendanceReport.aspx.cs" Inherits="FRS.ViewDateWiseAttendanceReport" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            font-weight: bold;
        }
        .auto-style3 {
            font-size: x-large;
        }
        .auto-style4 {
            width: 60%;
        }
    </style>
</head>
<body>

     <center><u>
      
             <ul class="navbar-nav mr-auto">
	        	<li class="nav-item active"><a href="StudentDashboard.aspx" class="nav-link pl-0">Profile</a></li> 	        		        		        	        	
	        </ul>
      </u></center>


    <form id="form1" runat="server">
        <div class="auto-style1">
            <strong><span class="auto-style3">Your Date Wise Attendance Report</span><br />
            <br />
            <br />
            <br />
            <br />
            Select Start Date</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server" TextMode="Date"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>Select End Date&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Date"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" CssClass="auto-style2" OnClick="Button1_Click" Text="Click here to view" />
            <br />
            <br />
            </strong>
            <table align="center" class="auto-style4">
                <tr>
                    <td>&nbsp;</td>
                    <strong>
                    <td><strong>
                        <asp:GridView ID="GridView1" runat="server">
                            <EmptyDataTemplate>
                                No Result found for this dates.<br /> Please try again!
                            </EmptyDataTemplate>
                        </asp:GridView>
                        </strong></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <br />
            <br />
            </strong>
        </div>
    </form>
</body>
</html>
