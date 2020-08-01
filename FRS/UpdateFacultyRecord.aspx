<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdateFacultyRecord.aspx.cs" Inherits="FRS.UpdateFacultyRecord" %>

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
            font-size: xx-large;
        }
        .auto-style2 {
            width: 70%;
        }
        
body {
  background-color: rgb(255, 183, 131);
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
	        <span class="oi oi-menu"></span> Menu</button>
	      <form>
          
	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav mr-auto">
                 <li class="nav-item "><a href="AdminDashboard.aspx" class="nav-link pl-0">Home</a></li>
	        	
	        	<li class="nav-item " ><a href="AddFaculty.aspx" class="nav-link">Faculty Details</a></li>
	        	<li class="nav-item active"><a href="UpdateFacultyRecord.aspx" class="nav-link">Update Faculty Record</a></li>
	            <li class="nav-item"><a href="AddNewSubject.aspx" class="nav-link">Add New Subject</a></li>
                <li class="nav-item"><a href="MarkManualAttedance.aspx" class="nav-link">Mark Maunal Attendance</a></li>
	        </ul>
	      </div>
        </form>
	    </div>
	  </nav>
 
         <font color="black">

    <form id="form1" runat="server">
        <div class="auto-style1">
            <strong>Update Faculty Record<br />
            </strong>
        </div>
        <table align="center" class="auto-style2">
            <tr>
                <td>Select Faculty</td>
                <td><strong>
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Faculty_Name" DataValueField="Faculty_Name">
                    </asp:DropDownList>
                    </strong>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FRSDatabaseConnectionString6 %>" SelectCommand="SELECT [Faculty_Name] FROM [AddFacultyDB]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="User_ID" DataSourceID="SqlDataSource2">
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                            <asp:BoundField DataField="User_ID" HeaderText="User_ID" InsertVisible="False" ReadOnly="True" SortExpression="User_ID" />
                            <asp:BoundField DataField="Faculty_Name" HeaderText="Faculty_Name" SortExpression="Faculty_Name" />
                            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                            <asp:BoundField DataField="Phone_Number" HeaderText="Phone_Number" SortExpression="Phone_Number" />
                            <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:FRSDatabaseConnectionString7 %>" DeleteCommand="DELETE FROM [AddFacultyDB] WHERE [User_ID] = @User_ID" InsertCommand="INSERT INTO [AddFacultyDB] ([Faculty_Name], [Address], [Phone_Number], [Gender]) VALUES (@Faculty_Name, @Address, @Phone_Number, @Gender)" SelectCommand="SELECT [User_ID], [Faculty_Name], [Address], [Phone_Number], [Gender] FROM [AddFacultyDB] WHERE ([Faculty_Name] = @Faculty_Name)" UpdateCommand="UPDATE [AddFacultyDB] SET [Faculty_Name] = @Faculty_Name, [Address] = @Address, [Phone_Number] = @Phone_Number, [Gender] = @Gender WHERE [User_ID] = @User_ID">
                        <DeleteParameters>
                            <asp:Parameter Name="User_ID" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="Faculty_Name" Type="String" />
                            <asp:Parameter Name="Address" Type="String" />
                            <asp:Parameter Name="Phone_Number" Type="String" />
                            <asp:Parameter Name="Gender" Type="String" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList1" Name="Faculty_Name" PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Faculty_Name" Type="String" />
                            <asp:Parameter Name="Address" Type="String" />
                            <asp:Parameter Name="Phone_Number" Type="String" />
                            <asp:Parameter Name="Gender" Type="String" />
                            <asp:Parameter Name="User_ID" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
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
