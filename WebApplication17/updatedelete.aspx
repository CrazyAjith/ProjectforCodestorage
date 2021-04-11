<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="updatedelete.aspx.cs" Inherits="WebApplication17.updatedelete" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 
    
	<title>Effective Login Form Responsive Widget Template :: w3layouts</title>
	<!-- Meta tag Keywords -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="Effective Login Form Responsive Widget,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements"
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
	<!-- css files -->
	<link rel="stylesheet" href="updatedelete/css/style.css" type="text/css" media="all" />
     <link href="updatedelete/css/style.css" rel="stylesheet" />
	<!-- Style-CSS -->
	<link rel="stylesheet" href="updatedelete/css/font-awesome.css">
    <link href="updatedelete/css/font-awesome.css" rel="stylesheet" />
	<!-- Font-Awesome-Icons-CSS -->
	<!-- //css files -->
	<!-- web-fonts -->
	<link href="updatedelete///fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
	<!-- //web-fonts -->

</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>

        <div class="video-w3l" data-vide-bg="video/1">
		<!--header-->
		<div class="header-w3l">
			<h1>
				<span>U</span>pdate
				<span>D</span>elete
				<span>C</span>odes
			</h1>
		</div>

                    <!-- main -->
<div class="w3top-nav-right">	
					<ul>
						<li><a href="home.aspx" >Logout</a></li>
				
					</ul> 
				</div>
		<!--//header-->
		<div class="main-content-agile">
             
             <asp:GridView ID="GridView1" runat="server" BackColor="#CCCCCC" DataKeyNames="CodeId" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" AutoGenerateColumns="False" CellSpacing="2"  ForeColor="Black" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowUpdating="GridView1_RowUpdating1" OnRowEditing="GridView1_RowEditing1" OnRowDeleting="GridView1_RowDeleting">
                 <Columns>
                     <asp:BoundField DataField="CodeId" HeaderText="CodeId" SortExpression="CodeId" />
                     <asp:BoundField DataField="Platform" HeaderText="Platform" SortExpression="Platform" />
                     <asp:BoundField DataField="Concept" HeaderText="Concept" SortExpression="Concept" />
                     <asp:BoundField DataField="Codes" HeaderText="Codes" SortExpression="Codes" />
                     <asp:CommandField CancelText="" ShowEditButton="True" />
                     <asp:CommandField ShowDeleteButton="True" />
                 </Columns>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                <RowStyle BackColor="White" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="Gray" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>
				
					
				
					</div>
            <asp:Label ID="lblresult" runat="server"></asp:Label>
					<div class="right-w3l">
					</div>
            <div class="right-w3l">
					</div>
				</div>
				</form>
		

		<!--//main-->
		<!--footer-->
		<!--//footer-->

	<!-- js -->
	<script src="js/jquery-2.1.4.min.js"></script>
	<script src="js/jquery.vide.min.js"></script>
	<!-- //js -->

    </body>
</html>
