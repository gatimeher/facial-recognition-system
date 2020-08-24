<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FullAttendanceReportStudentDashboard.aspx.cs" Inherits="FRS.FullAttendanceReportStudentDashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
            }
        body {
  background-color: rgb(255, 183, 131);
}

         .auto-style8 {
             font-size: large;
         }

    </style>
</head>
<body>

    <form id="form1" runat="server">

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
	      <form>
          
	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav mr-auto">
                <li class="nav-item "><a href="StudentDashboard.aspx" class="nav-link pl-0">Home</a></li> 
	        	<li class="nav-item active"><a href="FullAttendanceReportStudentDashboard.aspx" class="nav-link pl-0">Full Attendance Report</a></li>
                <li class="nav-item "><a href="ViewDateWiseAttendanceReport.aspx" class="nav-link pl-0">View Date Wise Report</a></li>
	        	
	        </ul>
	      </div>
        </form>
	    </div>
	  </nav>


    <font color="black">

        <div class="auto-style1">
            <strong><span class="auto-style8">Your Full Attendace Record</span></strong><em><strong><span class="auto-style8"><br />
            </span>
            <br />
            </strong>
            <asp:Button ID="Button1" runat="server" CssClass="auto-style5" OnClick="Button1_Click1" Text="Click here to view" />
            <strong>
            <br />
            </strong>
            </em>
            <table align="center" class="auto-style3">
                <tr>
                    <td>
                        <asp:GridView ID="GridView1" runat="server" CssClass="auto-style5">
                        </asp:GridView>
                    </td>
            <strong>
                    <em>
                    <td>&nbsp;</td>
                </tr>
                </table>
            <br />
            </em></strong>
        </div>
    </form>
</body>
</html>
