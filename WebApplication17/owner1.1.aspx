<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="owner1.1.aspx.cs" Inherits="WebApplication17.owner1__1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  
   
<title>Cognate a Corporate Business Category  Flat Bootstrap Responsive Website Template | Home :: w3layouts</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Cognate Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="owner1/css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<link href="owner1/css/style.css" rel='stylesheet' type='text/css' />
<script src="js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>	
<!--web-fonts-->
 <link href='owner1///fonts.googleapis.com/css?family=Lato' rel='stylesheet' type='text/css'>
<link href='owner1///fonts.googleapis.com/css?family=Cabin:400,700,500,600' rel='stylesheet' type='text/css'>
<link href='owner1///fonts.googleapis.com/css?family=Pacifico|Prata' rel='stylesheet' type='text/css'>
<!--//web-fonts-->
	<!--search jQuery-->
	<script src="js/main.js"></script>
	<!--//search jQuery-->
	<!-- animation-effect -->
<link href="owner1/css/animate.min.css" rel="stylesheet"> 
<script src="js/wow.min.js"></script>
<script>
 new WOW().init();
</script> 
    
    </head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>

        
	<div class="top-bar w3agile-1" id="home">
				<div class="container">
					<div class="row">
						<h1> <strong>Code</strong> <strong>Storage</strong></h1>
                      </div>
						<div class="col-md-4 head-right wow fadeInDown"  data-wow-duration=".8s" data-wow-delay=".3s">
						   <ul class="top-icons">
									<li><a class="fb" href="#"></a></li>
									<li><a class="twitt" href="#"></a></li>
									<li><a class="goog" href="#"></a></li>
									<li><a class="drib" href="#"></a></li>
							   </ul>
						</div>
						<div class="clearfix"></div>
                  
					</div>
				</div>
     

<!-- //header -->
<!-- banner -->
	<div class="banner agileinfo-1">
         
		<div class="container">
        
			<div class="header"><!--header-->	
				<nav class="navbar navbar-default">
					<div class="navbar-header wow fadeInLeft animated animated" data-wow-delay=".5s" style="visibility: visible; animation-delay: 0.5s; animation-name: fadeInLeft;">
						<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
						<h1><a href="index.html">OWNER</a></h1>
                        <p>&nbsp;</p>
					</div>
					<!--navbar-header-->
					<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1 wow fadeInRight animated animated" data-wow-delay=".5s" style="visibility: visible; animation-delay: 0.5s; animation-name: fadeInRight;">
						<ul class="nav navbar-nav navbar-right">
							<li><a href="ownerhome.aspx">Home</a></li>
							<li><a href="owner1.aspx" class="active">Upload Files</a></li>
							
							<li><a href="ownernotific.aspx">Notification</a></li>
							<li><a href="home.aspx">Logout</a></li>
							
						</ul>	

					
					</div>
				</nav>
		<center>           
            <h1><strong>FILE UPLOADS</strong></h1>
            <p>&nbsp;</p>
             <div class="clearfix"> 
                 <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" GridLines="Vertical" PageSize="2">
                     <AlternatingRowStyle BackColor="#DCDCDC" />
                     <Columns>
                         <asp:BoundField DataField="Plat_form" HeaderText="Platform" SortExpression="Plat_form" />
                         <asp:BoundField DataField="Concepts" HeaderText="Concepts" SortExpression="Concepts" />
                         <asp:BoundField DataField="Descriptions" HeaderText="Descriptions" SortExpression="Descriptions" />
                         <asp:BoundField DataField="Codes" HeaderText="Codes" SortExpression="Codes" />
                     </Columns>
                     <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                     <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                     <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                     <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                     <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                     <SortedAscendingCellStyle BackColor="#F1F1F1" />
                     <SortedAscendingHeaderStyle BackColor="#0000A9" />
                     <SortedDescendingCellStyle BackColor="#CAC9C9" />
                     <SortedDescendingHeaderStyle BackColor="#000065" />
                 </asp:GridView>
                 <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ownersConnectionString %>" SelectCommand="SELECT * FROM [owner1]"></asp:SqlDataSource>
                 </div>

		</center>
    </form>
</body>
</html>
