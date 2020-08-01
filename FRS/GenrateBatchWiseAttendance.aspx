<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GenrateBatchWiseAttendance.aspx.cs" Inherits="FRS.GenrateBatchWiseAttendance" %>

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


        .auto-style2 {
            font-size: xx-large;
        }
        .auto-style3 {
            text-align: center;
        }
        .auto-style4 {
            width: 70%;
        }
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
                <li class="nav-item "><a href="AdminDashboard.aspx" class="nav-link pl-0">Home</a></li>
	        	
	          <li class="nav-item "><a href="BatchRegistration.aspx" class="nav-link">Batch Registration</a></li>
               <li class="nav-item "><a href="UpdateBatch.aspx" class="nav-link">Update Batch Records</a></li>
                <li class="nav-item active"><a href="GenrateBatchWiseAttendance.aspx" class="nav-link">Generate Batch Wise Report</a></li>
                
	        </ul>
	      </div>
        </form>
	    </div>
	  </nav>

<font color="black">

        <div class="auto-style3">
            <strong><span class="auto-style2">&nbsp; Generate Batch Wise Attendance Report</span></strong></div>
        <table align="center" class="auto-style4">
            <tr>
                <td>Enter a Teacher Name</td>
                <td>
                    <asp:DropDownList ID="SelectTeacherNameDropDownList" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Faculty_Name" DataValueField="Faculty_Name" OnSelectedIndexChanged="SelectTeacherNameDropDownList_SelectedIndexChanged">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FRSDatabaseConnectionString30 %>" SelectCommand="SELECT [Faculty_Name] FROM [AddFacultyDB]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>Select Batch Name</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="Batch_Code" DataValueField="Batch_Code" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:FRSDatabaseConnectionString36 %>" SelectCommand="SELECT [Batch_Code] FROM [AddFacultyDB] WHERE ([Faculty_Name] = @Faculty_Name)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="SelectTeacherNameDropDownList" Name="Faculty_Name" PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:GridView ID="GridView2" runat="server" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
    <p>
        &nbsp;</p>
</body>
</html>
