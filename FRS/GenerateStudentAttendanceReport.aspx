<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GenerateStudentAttendanceReport.aspx.cs" Inherits="FRS.GenerateAttendanceReport" %>

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
            font-size: x-large;
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
        .auto-style5 {
            width: 226px;
        }
        .auto-style6 {
            width: 235px;
        }
        .auto-style7 {
            color: #FF0000;
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
	        	<li class="nav-item "><a href="AddStudent.aspx" class="nav-link pl-0">Student Details</a></li>
	        	<li class="nav-item"><a href="UpdateStudentRecord.aspx" class="nav-link">Update Student Record</a></li>
	        	<li class="nav-item active"><a href="GenerateStudentAttendanceReport.aspx" class="nav-link">Genrate Student Attendance Report</a></li>
	        	
                <li class="nav-item"><a href="AddNewSubject.aspx" class="nav-link">Add New Subject</a></li>
                <li class="nav-item"><a href="MarkManualAttedance.aspx" class="nav-link">Mark Maunal Attendance</a></li>
	        </ul>
	      </div>
        </form>
	    </div>
	  </nav>

        <font color ="black">
    


    <form id="form1" runat="server">
        <p class="auto-style3">
            <strong><span class="auto-style2">&nbsp; Generate Attendance Report</span></strong></p>
        <table align="center" class="auto-style4">
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="EnterStudentNameLabel" runat="server" Text="Enter Student Name"></asp:Label>
                </td>
                <td>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="EnterStudentNameTextBox" runat="server" Height="23px" Width="175px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="EnterStudentNameTextBox" CssClass="auto-style7" ErrorMessage="Enter Student Name"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style5">

        <font color ="black">
    


                    <asp:Button ID="SearchButton" runat="server" Text="Search" OnClick="SearchButton_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="3">

        <font color ="black">
    


                    <div class="text-center">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                        <Columns>
                            <asp:BoundField DataField="Batch_Code" HeaderText="Batch_Code" SortExpression="Batch_Code" />
                            <asp:BoundField DataField="Student_Name" HeaderText="Student_Name" SortExpression="Student_Name" />
                            <asp:BoundField DataField="Subject" HeaderText="Subject" SortExpression="Subject" />
                            <asp:BoundField DataField="In_Time" HeaderText="In_Time" SortExpression="In_Time" />
                            <asp:BoundField DataField="Out_Time" HeaderText="Out_Time" SortExpression="Out_Time" />
                            <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                            <asp:BoundField DataField="Attendance" HeaderText="Attendance" SortExpression="Attendance" />
                        </Columns>
                        <EmptyDataTemplate>
                            <strong><span class="auto-style3">No Record Found for this Name<br /> </span></strong>
                        </EmptyDataTemplate>
                    </asp:GridView>
                    </div>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FRSDatabaseConnectionString25 %>" SelectCommand="SELECT [Batch_Code], [Student_Name], [Subject], [In_Time], [Out_Time], [Date], [Attendance] FROM [StudentMarkManualAttendanceDB] WHERE ([Student_Name] = @Student_Name)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="EnterStudentNameTextBox" Name="Student_Name" PropertyName="Text" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="SelectStartDateLabel" runat="server" Text="Select Start Date"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="SelectStartDateTextBox" runat="server" TextMode="Date"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="SelectStartDateTextBox" CssClass="auto-style7" ErrorMessage="Select Start Date"></asp:RequiredFieldValidator>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                <td class="auto-style5">

        <font color ="black">
    


                    <asp:Label ID="SelectEndDateLabel0" runat="server" Text="Select End Date"></asp:Label>
                </td>
                <td>

        <font color ="black">
    


                    <asp:TextBox ID="SelectEndDateTextBox" runat="server" TextMode="Date"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" CssClass="auto-style7" ErrorMessage="Select End Date"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="text-center" colspan="3">&nbsp;</td>
            </tr>
            <tr>
                <td class="text-center" colspan="3">

        <font color ="black">
    


                    <asp:Button ID="SearchRecordDateWiseButton" runat="server" OnClick="SearchRecordDateWiseButton_Click1" Text="Search Record Date Wise" />
                </td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="text-center" colspan="3">

        <font color ="black">
    


                    <asp:GridView ID="GridView2" runat="server">
                        <EmptyDataTemplate>
                            <strong><span class="auto-style3">Record Not Found for this search </span></strong>
                        </EmptyDataTemplate>
                    </asp:GridView>
                </td>
            </tr>
           
        </table>
    </form>
</body>
</html>
