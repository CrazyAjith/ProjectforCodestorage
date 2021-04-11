<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="uploadcode.aspx.cs" Inherits="WebApplication17.uploadcode" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    	<title>Creative Register Form Responsive Widget Template :: w3layouts</title>
	<!-- Meta tag Keywords -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="UTF-8" />
	<meta name="keywords" content="Creative Register Form Responsive Widget,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements"
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
	<link rel="stylesheet" href="codestore/css/style.css" type="text/css" media="all" />
	<!-- Style-CSS -->
	<link rel="stylesheet" href="codestore/css/font-awesome.css">
	<!-- Font-Awesome-Icons-CSS -->
	<!-- //css files -->
	<!-- web-fonts -->
	<link href="codestore///fonts.googleapis.com/css?family=Bellefair&amp;subset=hebrew,latin-ext" rel="stylesheet">
	<link href="codestore///fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
	<!-- //web-fonts -->

</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>

        <!--header-->
	<h1>
		<span>U</span>ploading
		<span>C</span>odes
		</h1>
	<!--//header-->
	<!-- content -->
	<div class="main-content-agile">
		<div class="sub-main-w3">
			
         <table><center>   <tr>
                <td>
                    	<div class="form-style-agile">
					<label>Code Id</label>
			</div>
                </td>

                <td>
                    <div class="pom-agile">
                        <asp:TextBox ID="TextBox1" placeholder="Code Id" runat="server"></asp:TextBox>
					</div>
				
                </td>
            </tr>


				<tr>
                    <td>
                        <div class="form-style-agile">
					<label>Platform</label>
				</div>
                    </td>
                    <td>
                        <div class="pom-agile">
                        <asp:TextBox ID="TextBox2" placeholder="Enter The Platform" runat="server"></asp:TextBox>
					</div>
                    </td>
				</tr>

					

            <tr>
                <td>
                    
				<div class="form-style-agile">
                    <label>Concept</label>
					&nbsp;</div>
                </td>
                <td>

                    <div class="pom-agile">
                        <asp:TextBox ID="TextBox4" placeholder="Concept" runat="server"></asp:TextBox>
					</div>
				
                </td>
            </tr>
					
				
				
            <tr>
                <td>
                     <div class="form-style-agile">
					<label>Code</label>
			</div>
                </td>
                <td>
                    
           		<div class="pom-agile">
                        <asp:TextBox ID="TextBox3" placeholder="Enter The Codes " runat="server"></asp:TextBox>
					</div>
			
                     </td>
            </tr>
             </table>
            </center>
             
           
            <br />
             
           
            <asp:Button ID="Button1" runat="server" Text="ADD" OnClick="Button1_Click" Height="52px" Width="200px" />
			
		</div>
        </div>
       
	
	<!-- //content -->
	<!-- footer -->
	
    </form>
</body>
</html>
