<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FacultyDashboard.aspx.cs" Inherits="FRS.FacultyDashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
   
    <title>M.K. Placement And Education Services</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800,900&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="css/animate.css">
    
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">

    <link rel="stylesheet" href="css/aos.css">

    <link rel="stylesheet" href="css/ionicons.min.css">
    
    <link rel="stylesheet" href="css/flaticon.css">
    <link rel="stylesheet" href="css/icomoon.css">
    <link rel="stylesheet" href="css/style.css">
    <style type="text/css">
        .auto-style2 {
            width: 70%;
        }
        .auto-style3 {
            height: 30px;
        }
             body {
  background-color: rgb(255, 183, 131);
}
        .auto-style4 {
            color: #000000;
            font-size: large;
        }
        .auto-style5 {
            font-weight: bold;
        }
        .auto-style6 {
            width: 60%;
        }
        .auto-style7 {
            font-size: medium;
        }
    </style>
</head>
<body>
      
         <div class="bg-top navbar-light">
    	<div class="container">
    		<div class="row no-gutters d-flex align-items-center align-items-stretch">
    			<div class="col-md-4 d-flex align-items-center py-4">
    				<a class="navbar-brand" href="index.html">MK  <span>Placement & Education Services</span></a>
    			</div>
	    		<div class="col-lg-8 d-block">
		    		<div class="row d-flex">
					    <div class="col-md d-flex topper align-items-center align-items-stretch py-md-4">
					    	<div class="icon d-flex justify-content-center align-items-center"><span class="icon-paper-plane"></span></div>
					    	<div class="text">
					    		<span>Email</span>
						    	<span>mkplacement@gmail.com</span>
						    </div>
					    </div>
					    <div class="col-md d-flex topper align-items-center align-items-stretch py-md-4">
					    	<div class="icon d-flex justify-content-center align-items-center"><span class="icon-phone2"></span></div>
						    <div class="text">
						    	<span>Call</span>
						    	<span>Call Us: +91 8551952574</span>
						    </div>
					    </div>
					    <div class="col-md topper d-flex align-items-center justify-content-end">
					    	<p class="mb-0">
					    		<a href="Login.aspx" class="btn py-2 px-3 btn-primary d-flex align-items-center justify-content-center">
					    			<span>Logout</span> 


					    		</a>                  
					</div>
			    </div>
		    </div>
		  </div>
    </div>  

             <nav class="navbar navbar-expand-lg navbar-dark bg-dark ftco-navbar-light" id="ftco-navbar">
	    <div class="container d-flex align-items-center px-4">
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="oi oi-menu"></span> Menu
	      </button>
	      </div>
          
	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav mr-auto">
	        	<li class="nav-item active"><a href="FacultyDashboard.aspx" class="nav-link pl-0">Profile</a></li> 
	        	<li class="nav-item active"><a href="FacultyFullAttendanceReport.aspx" class="nav-link pl-0">Full Attendance Report</a></li>
                <li class="nav-item active"><a href="FacultyDateWiseAttendance.aspx" class="nav-link pl-0">View Date Wise Report</a></li>
                     <li class="nav-item active"><a href="GenrateBatchwiseAttendanceFaculty.aspx" class="nav-link pl-0">View Batch Wise Report</a></li>
	        	
	        	
	        	
	        </ul>
	      </div>
	    </div>
	  </nav>




    <form id="form1" runat="server">
    <p class="text-center">
        <asp:Label ID="Label1" runat="server" CssClass="auto-style4" Text="Label"></asp:Label>
        </p>
        <p class="text-center">
            <asp:Button ID="Button1" runat="server" CssClass="auto-style5" OnClick="Button1_Click" Text="View Your Registration Details Here" />
        </p>
        <p class="text-center">
            &nbsp;</p>
        <p class="text-center">
            &nbsp;</p>
        <p class="text-center">
            &nbsp;</p>
        <table align="center" class="auto-style6">
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
            </tr>
        </table>
        <p class="text-center">
            &nbsp;</p>
        <p class="text-center">
            &nbsp;</p>
        <p class="text-center">
            &nbsp;</p>
        <p class="text-center">
            &nbsp;</p>

    
        <table align="center" class="auto-style2">
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="GenerateStudentAttendanceReportButton" runat="server" OnClick="GenrateStudentAttendanceReportButton_Click" Text="Generate Student Attendance Report" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="GenrateBatchWiseReportButton" runat="server" OnClick="GenrateBatchWiseReportButton_Click" Text="Genrate Batch Wise Report" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style3"></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
