<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminDashboard.aspx.cs" Inherits="FRS.AdminDashboard" %>

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
    <style>
         body {
  background-color: rgb(255, 183, 131);
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
                <li class="nav-item active"><a href="AdminDashboard.aspx" class="nav-link pl-0">Home</a></li>
	        	<li class="nav-item "><a href="AddStudent.aspx" class="nav-link pl-0">Student Details</a></li>
	        	<!--<li class="nav-item"><a href="UpdateStudentRecord.aspx" class="nav-link">Update Student Record</a></li>-->
	        	<!--<li class="nav-item"><a href="GenerateStudentAttendanceReport.aspx" class="nav-link">Genrate Student Attendance Report</a></li>-->
	        	<li class="nav-item"><a href="AddFaculty.aspx" class="nav-link">Faculty Details</a></li>
	        	<!--<li class="nav-item"><a href="UpdateFacultyRecord.aspx" class="nav-link">Update Faculty Record</a></li>-->
	          <li class="nav-item"><a href="BatchRegistration.aspx" class="nav-link">Batch Details</a></li>
                <!--<li class="nav-item"><a href="UpdateBatch.aspx" class="nav-link">Update Batch Details</a></li>
                <li class="nav-item"><a href="GenrateBatchWiseAttendance.aspx" class="nav-link">Generate Batch Wise Report</a></li>-->
                <li class="nav-item"><a href="AddNewSubject.aspx" class="nav-link">Add New Subject</a></li>
                <li class="nav-item"><a href="MarkManualAttedance.aspx" class="nav-link">Mark Maunal Attendance</a></li>
	        </ul>
	      </div>
        </form>
	    </div>
	  </nav>


        <center>
    
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
            <br />
    
         <asp:Button ID="UpdateStudentRecord" runat="server" Text="Update Student Record" OnClick="UpdateStudentRecord_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:Button ID="AddStudent" runat="server" Text="Add Student" OnClick="AddStudent_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="GenerateStudentAttendanceReportButton" runat="server" OnClick="GenrateStudentAttendanceReportButton_Click" Text="Generate Student Attendance Report" />
            <br />
            <br />
         <asp:Button ID="UpdateFacultyRecord" runat="server" Text="Update Faculty Record" OnClick="UpdateFacultyRecord_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:Button ID="AddFaculty" runat="server" Text="Add Faculty" OnClick="AddFaculty_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
         <asp:Button ID="AddNewSubject" runat="server" Text="Add New Subject" OnClick="AddNewSubject_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="MarkManualAttedance" runat="server" OnClick="MarkManualAttedance_Click" Text="Mark Manual Attedanceton" />
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
         <br />
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:Button ID="BatchRegistration" runat="server" Text="Batch Registration" OnClick="BatchRegistration_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:Button ID="UpdateBatch" runat="server" Text="Update Batch" OnClick="UpdateBatch_Click" />
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="GenerateBatchWiseReportButton" runat="server" OnClick="GenrateBatchWiseReportButton_Click" Text="Generate Batch Wise Report" />
            <p>
                &nbsp;</p>
            <p>
                &nbsp;</p>

             </center>
             </form>
</body>
</html>
