﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ownernotific.aspx.cs" Inherits="WebApplication17.ownernotific" %>

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
    
    <style type="text/css">
        .auto-style1 {
        }
    </style>
  
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
							<li><a href="owner1.aspx" >Upload Files</a></li>
							
							<li><a href="ownernotific.aspx"class="active">Notification</a></li>
							<li><a href="home.aspx">Logout</a></li>
							
						</ul>	

					
					</div>
				</nav>
	<center>

        <h1><span class="auto-style1"><strong>DOWNLOAD</strong></span> <strong>COUNT</strong></h1>
        <br /><br />

        <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
	</center><center>                        <asp:Button ID="Button1" runat="server" Text="View" OnClick="Button1_Click" />  </center>
                

    </form>
</body>
</html>
