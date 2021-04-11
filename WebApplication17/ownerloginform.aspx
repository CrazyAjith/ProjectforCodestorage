<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ownerloginform.aspx.cs" Inherits="WebApplication17.ownerloginform" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

	<title>Apps Login Form a Simple Login form Responsive Widget :: w3layouts</title>
	<meta name="keywords" content="Apps Login Form Responsive widget, Flat Web Templates, Android Compatible web template, 
	Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- stylesheets -->
	<link rel="stylesheet" href="ownerloginform/css/font-awesome.css">
	<link rel="stylesheet" href="ownerloginform/css/style.css">
	<!-- google fonts  -->
	<link href="ownerloginform///fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
	<link href="ownerloginform///fonts.googleapis.com/css?family=Raleway:400,500,600,700" rel="stylesheet">


</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        
	<div class="agile-login">
		<h1>&nbsp;Login Form</h1>
		<div class="wrapper">
			<h2 style="font-family: Calibri"><strong>Owner Can Login Now!</strong></h2>
			<div class="w3ls-form">
				
					<label>Username</label>
					 <asp:TextBox ID="TextBox1" placeholder=" your username" runat="server" BorderColor="Black"></asp:TextBox>
			
                <label>Password</label>
					  <asp:TextBox ID="TextBox2" placeholder="your password" runat="server" BorderColor="Black" Height="42px" TextMode="Password" Width="342px"></asp:TextBox>
					
                <asp:Button ID="Button1" runat="server" Text="LOGIN" OnClick="Button1_Click" />
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click1">Register Your Details Before SignIn</asp:LinkButton>
				
			</div>
			
			
		</div>
		
		
	</div>
	
    </form>
</body>
</html>
