<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="conlogin.aspx.cs" Inherits="WebApplication17.conlogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  
    
<title>Clean Login Form a Flat Responsive Widget Template :: w3layouts</title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Clean Login Form Responsive, Login Form Web Template, Flat Pricing Tables, Flat Drop-Downs, Sign-Up Web Templates, Flat Web Templates, Login Sign-up Responsive Web Template, Smartphone Compatible Web Template, Free Web Designs for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design" />

<!-- css files -->
<link href="conlogin/css/font-awesome.min.css" rel="stylesheet" type="text/css" media="all">
<link href="conlogin/css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- /css files -->

<!-- online fonts -->
<link href="conlogin///fonts.googleapis.com/css?family=Sirin+Stencil" rel="stylesheet">
<!-- online fonts -->

</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>

        
<div class="container demo-1">
	<div class="content">
        <div id="large-header" class="large-header">
			<h1>Consumer login</h1>
				<div class="main-agileits">
				    <div class="form-w3-agile">
							<h2><b><strong>login</strong></b> <b><strong>Now</strong></b></h2>
							
								<div class="form-sub-w3">
                                    <asp:TextBox ID="TextBox1" placeholder="Username " runat="server"></asp:TextBox>
								<div class="icon-w3">
									<i class="fa fa-user" aria-hidden="true"></i>
								</div>
								</div>
								<div class="form-sub-w3">
                                    <asp:TextBox ID="TextBox2" placeholder="Password" runat="server" TextMode="Password"></asp:TextBox>
								<div class="icon-w3">
									<i class="fa fa-unlock-alt" aria-hidden="true"></i>
								</div>
								</div>
								<div class="submit-w3l">
                                    <asp:Button ID="Button1" runat="server" Text="Login" Height="62px" OnClick="Button1_Click" Width="156px" Font-Names="Arial Black" />
								 <center><asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">SignUp </asp:LinkButton>
								</center>   </div>
						
							<div class="social w3layouts">
								
								</div>
								<div class="clear"></div>
							</div>
						</div>
				<!--//form-ends-here-->
				</div><!-- copyright -->
					<!-- //copyright --> 
        </div>
	</div>
</div>	

    </form>
</body>
</html>
