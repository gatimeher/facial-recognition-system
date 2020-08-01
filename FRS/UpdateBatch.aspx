<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdateBatch.aspx.cs" Inherits="FRS.UpdateBatch" %>

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
               <li class="nav-item active"><a href="UpdateBatch.aspx" class="nav-link">Update Batch Records</a></li>
                <li class="nav-item"><a href="GenrateBatchWiseAttendance.aspx" class="nav-link">Generate Batch Wise Report</a></li>
                
	        </ul>
	      </div>
        </form>
	    </div>
	  </nav>

<font color="black">


        <div class="auto-style1">
            <strong>Update Batch Record<br />
            </strong>
        </div>
        <table align="center" class="auto-style2">
            <tr>
                <td>Select Batch</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Batch_Code" DataValueField="Batch_Code">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FRSDatabaseConnectionString22 %>" SelectCommand="SELECT [Batch_Code] FROM [BatchDB]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Teacher_Name" DataSourceID="SqlDataSource3">
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                            <asp:BoundField DataField="Teacher_Name" HeaderText="Teacher_Name" ReadOnly="True" SortExpression="Teacher_Name" />
                            <asp:BoundField DataField="Subject" HeaderText="Subject" SortExpression="Subject" />
                            <asp:BoundField DataField="Batch_Time" HeaderText="Batch_Time" SortExpression="Batch_Time" />
                            <asp:BoundField DataField="Batch_Code" HeaderText="Batch_Code" SortExpression="Batch_Code" />
                        </Columns>
                        <EmptyDataTemplate>
                            Record does not exist
                        </EmptyDataTemplate>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:FRSDatabaseConnectionString23 %>" DeleteCommand="DELETE FROM [BatchDB] WHERE [Teacher_Name] = @Teacher_Name" InsertCommand="INSERT INTO [BatchDB] ([Teacher_Name], [Subject], [Batch_Time], [Batch_Code]) VALUES (@Teacher_Name, @Subject, @Batch_Time, @Batch_Code)" SelectCommand="SELECT [Teacher_Name], [Subject], [Batch_Time], [Batch_Code] FROM [BatchDB] WHERE ([Batch_Code] = @Batch_Code)" UpdateCommand="UPDATE [BatchDB] SET [Subject] = @Subject, [Batch_Time] = @Batch_Time, [Batch_Code] = @Batch_Code WHERE [Teacher_Name] = @Teacher_Name">
                        <DeleteParameters>
                            <asp:Parameter Name="Teacher_Name" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="Teacher_Name" Type="String" />
                            <asp:Parameter Name="Subject" Type="String" />
                            <asp:Parameter Name="Batch_Time" Type="String" />
                            <asp:Parameter Name="Batch_Code" Type="String" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList1" Name="Batch_Code" PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Subject" Type="String" />
                            <asp:Parameter Name="Batch_Time" Type="String" />
                            <asp:Parameter Name="Batch_Code" Type="String" />
                            <asp:Parameter Name="Teacher_Name" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            </table>
    </form>
</body>
</html>
