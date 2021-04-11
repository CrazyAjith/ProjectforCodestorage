<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CONNREG.aspx.cs" Inherits="WebApplication17.conreg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

	<title>Validator Signup Form Responsive Widget Template :: w3layouts</title>
	<!-- Meta tag Keywords -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="UTF-8" />
	<meta name="keywords" content="Validator Signup Form Responsive Widget,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements"
	/>
	<script>
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<!-- Meta tag Keywords -->
	<!-- css file -->
	<link rel="stylesheet" href="conreg/css/style.css" type="text/css" media="all" />
	<!-- Style-CSS -->
	<!-- //css file -->
	<!-- web-fonts -->
	<link href="conreg///fonts.googleapis.com/css?family=Cuprum:400,400i,700,700i&amp;subset=cyrillic,cyrillic-ext,latin-ext,vietnamese"
	    rel="stylesheet">
	<!-- //web-fonts -->

</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <h1>
		<span>C</span>onsumer
		<span>R</span>egisteration
		<span>F</span>orm
	</h1>
	<!-- //title -->
	<!-- content -->
	<div class="sub-main-w3">

			<div class="form-group">
				
                <asp:TextBox ID="TextBox1" placeholder="Username" runat="server"></asp:TextBox>
                <br />
                <br />

				
                <asp:TextBox ID="TextBox2" placeholder="your password" runat="server"></asp:TextBox>
			<br /><br />
				
                <asp:TextBox ID="TextBox3" placeholder="MailId" runat="server"></asp:TextBox>
			
			<br /><br />
				
                <asp:TextBox ID="TextBox4" placeholder="your contact number" runat="server"></asp:TextBox>
			
				<br /><br />
			<br />
			<div class="form-group">
            <asp:Button ID="Button1"  runat="server" Text="Register" Height="48px" Width="130px" style="font-weight: 700" OnClick="Button1_Click" />
	</div>
	</div></div>
	<!-- //content -->

	<!-- copyright -->
	
	<!-- //copyright -->

	<!-- Jquery -->
	<script src="js/jquery-2.2.3.min.js"></script>
	<!-- //Jquery -->
	<!-- Jquery -->
	<script src="js/jquery-simple-validator.min.js"></script>
	<!-- //Jquery -->

    </form>
</body>
</html>
