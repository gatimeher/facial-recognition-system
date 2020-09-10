﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BatchReportWithoutfacultyAdmin.aspx.cs" Inherits="FRS.BatchReportWithoutfacultyAdmin" %>

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

        body {
  background-color: rgb(255, 183, 131);
}
        .auto-style1 {
            text-align: center;
            font-size: xx-large;
        }
        .auto-style2 {
            width: 70%;
            font-size: medium;
        }
        .auto-style3 {
            font-size: medium;
        }
        .auto-style4 {
            font-size: medium;
            color: #FF0000;
        }
        .auto-style5 {
            font-size: small;
        }
    </style>

</head>
<body>


    <div>
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
               <li class="nav-item"><a href="UpdateBatch.aspx" class="nav-link">Update Batch Records</a></li>
	        	<li class="nav-item"><a href="GenerateBatchwiseAttendanceAdmin.aspx" class="nav-link">Faculty Batch wise Attendance Report</a></li>
                <li class="nav-item active"><a href="BatchReportWithoutfacultyAdmin.aspx" class="nav-link">Batch wise Student Attendance Report</a></li>
	        	
               <%-- <li class="nav-item"><a href="AddNewSubject.aspx" class="nav-link">Add New Subject</a></li>
                <li class="nav-item"><a href="MarkManualAttedance.aspx" class="nav-link">Mark Maunal Attendance</a></li>--%>
	        </ul>
	      </div>
        </form>
	    </div>
	  </nav>

        <font color ="black">

    <form id="form1" runat="server">
        <div class="auto-style1">
            <br />
            Batch wise Attendance Report<br />
            <br />
            <table align="center" class="auto-style2">
                <tr>
                    <td class="auto-style3">
                        Select Batch Code</td>
                    <td>

        <font color ="black">

                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FRSDatabaseConnectionString84 %>" SelectCommand="SELECT [Batch_Code] FROM [StudentMarkManualAttendanceDB]"></asp:SqlDataSource>
                        </font>
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" CssClass="auto-style3" DataSourceID="SqlDataSource1" DataTextField="Batch_Code" DataValueField="Batch_Code">
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="DropDownList1" CssClass="auto-style4" ErrorMessage="Please select Batch code"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="auto-style5" DataSourceID="SqlDataSource2">
                            <Columns>
                                <asp:BoundField DataField="Batch_Code" HeaderText="Batch_Code" SortExpression="Batch_Code" />
                                <asp:BoundField DataField="Student_Name" HeaderText="Student_Name" SortExpression="Student_Name" />
                                <asp:BoundField DataField="Subject" HeaderText="Subject" SortExpression="Subject" />
                                <asp:BoundField DataField="In_Time" HeaderText="In_Time" SortExpression="In_Time" />
                                <asp:BoundField DataField="Out_Time" HeaderText="Out_Time" SortExpression="Out_Time" />
                                <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                                <asp:BoundField DataField="Attendance" HeaderText="Attendance" SortExpression="Attendance" />
                                <asp:BoundField DataField="Faculty_Name" HeaderText="Faculty_Name" SortExpression="Faculty_Name" />
                            </Columns>
                            <EmptyDataTemplate>
                                Rocord not Found
                            </EmptyDataTemplate>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:FRSDatabaseConnectionString85 %>" SelectCommand="SELECT [Batch_Code], [Student_Name], [Subject], [In_Time], [Out_Time], [Date], [Attendance], [Faculty_Name] FROM [StudentMarkManualAttendanceDB] WHERE ([Batch_Code] = @Batch_Code)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="DropDownList1" Name="Batch_Code" PropertyName="SelectedValue" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
                </table>
            <br />
        </div>
    </form>
</body>
</html>
