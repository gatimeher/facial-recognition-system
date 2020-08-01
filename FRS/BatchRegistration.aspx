<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BatchRegistration.aspx.cs" Inherits="FRS.BatchRegistration" %>

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
            width: 60%;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            text-align: center;
            font-size: x-large;
        }
      
* {
  -webkit-box-sizing: border-box;
  box-sizing: border-box; }

    * {
    text-shadow: none !important;
    -webkit-box-shadow: none !important;
    box-shadow: none !important; }
  
     body {
  background-color: rgb(255, 183, 131);
}

        .auto-style4 {
            color: #FF0000;
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
	      <form>
          
	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav mr-auto">
                <li class="nav-item "><a href="AdminDashboard.aspx" class="nav-link pl-0">Home</a></li>
	        	
	          <li class="nav-item active"><a href="BatchRegistration.aspx" class="nav-link">Batch Registration</a></li>
               <li class="nav-item"><a href="UpdateBatch.aspx" class="nav-link">Update Batch Records</a></li>
                <li class="nav-item"><a href="GenrateBatchWiseAttendance.aspx" class="nav-link">Generate Batch Wise Report</a></li>
                
	        </ul>
	      </div>
        </form>
	    </div>
	  </nav>

<font color="black">

        <p class="auto-style3">
            &nbsp;<strong>Batch Registration</strong></p>
        <form id="form1" runat="server">
        <br />
        <table align="center" class="auto-style1">
            <tr>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Batch Code</td>
                <td>
                    <asp:DropDownList ID="BatchCodeDropDownList" runat="server" Height="23px" Width="175px">
                        <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem>DotNet2020</asp:ListItem>
                        <asp:ListItem>JAVA2020</asp:ListItem>
                        <asp:ListItem>Python2020</asp:ListItem>
                        <asp:ListItem>C2020</asp:ListItem>
                        <asp:ListItem>CPlus2020</asp:ListItem>
                        <asp:ListItem>MachLearning2020</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="BatchCodeDropDownList" CssClass="auto-style4" ErrorMessage="Select Batch Code"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Faculty Name</td>
                <td>
                    <asp:DropDownList ID="FacultyNameDropDownList" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="Faculty_Name" DataValueField="Faculty_Name" Height="23px" Width="175px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:FRSDatabaseConnectionString12 %>" SelectCommand="SELECT [Faculty_Name] FROM [AddFacultyDB]"></asp:SqlDataSource>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="FacultyNameDropDownList" CssClass="auto-style4" ErrorMessage="Select Faculty Name"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Subject</td>
                <td>
                    <asp:DropDownList ID="SubjectDropDownList" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Subject_Name" DataValueField="Subject_Name" Height="23px" Width="175px">
                        <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem>c</asp:ListItem>
                        <asp:ListItem>c++</asp:ListItem>
                        <asp:ListItem>.NET</asp:ListItem>
                        <asp:ListItem>Python</asp:ListItem>
                        <asp:ListItem>git</asp:ListItem>
                        <asp:ListItem>Spring Boot</asp:ListItem>
                        <asp:ListItem>Mango DB</asp:ListItem>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FRSDatabaseConnectionString16 %>" SelectCommand="SELECT [Subject_Name] FROM [AddSubjectDB]"></asp:SqlDataSource>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="SubjectDropDownList" CssClass="auto-style4" ErrorMessage="Select Subject"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Batch Time</td>
                <td>
                    <asp:DropDownList ID="BatchTimeDropDownList" runat="server" Height="23px" Width="175px">
                        <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem>9.00 am - 11.00 am</asp:ListItem>
                        <asp:ListItem>11.00 am - 01.00 pm</asp:ListItem>
                        <asp:ListItem>02.00 pm - 04.00 pm</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="BatchTimeDropDownList" CssClass="auto-style4" ErrorMessage="Select Batch Time"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                            &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2" colspan="2">
                    <asp:Button ID="SaveButton" runat="server" Text="Save" OnClick="SaveButton_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="CancelButton" runat="server" Text="Cancel" OnClick="CancelButton_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2" colspan="2">
                            <asp:Label ID="StatusLabel" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
        <div>
        </div>
    </form>
</body>
</html>
