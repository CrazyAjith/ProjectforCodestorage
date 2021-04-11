<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Fileupload.aspx.cs" Inherits="WebApplication17.Fileupload" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    


    
	<title>Groovy Login Form a Responsive Widget Template :: w3layouts</title>
	<!-- Meta Tags -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="Groovy Login Form Responsive Widget,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements"
	/>
	<script type="application/x-javascript">
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<!-- //Meta Tags -->
	<!-- Font-Awesome-CSS -->
		<link href="fileupload/css/font-awesome.css" rel="stylesheet">
	<!--// Font-Awesome-CSS -->
	<!-- Required Css -->
		<link href="fileupload/css/style.css" rel='stylesheet' type='text/css' />
	<!--// Required Css -->
	<!--fonts-->
	<link href="fileupload///fonts.googleapis.com/css?family=Montserrat:300,400,500,600" rel="stylesheet">
	
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>

        
	<h1>File Upload</h1>
	<!-- Main-Content -->
	<div class="main-w3layouts-form">
		<h2>Insert Your Files</h2>
		<!-- main-w3layouts-form -->
		
 
                

               
               
                
                <asp:TextBox ID="TextBox1" placeholder="Code Id" runat="server"></asp:TextBox>

           
                
                <asp:TextBox ID="TextBox2" placeholder="Platform" runat="server"></asp:TextBox>


            
                
                <asp:TextBox ID="TextBox3" placeholder="Concept" runat="server"  ></asp:TextBox>

           
                
            

           
             

             <span class="fa-inverse">Code</span>:   <asp:FileUpload ID="FileUpload1" runat="server" />

                   <asp:Label ID="Label5" runat="server" ></asp:Label>
                    

              
                  
                <asp:Button ID="Button1" runat="server" Text="Sumbit" OnClick="Button1_Click" ></asp:Button>

              
        
        <asp:GridView ID="GridView1" runat="server" OnRowCommand="GridView1_RowCommand" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" >

              <AlternatingRowStyle BackColor="#DCDCDC" />

              <Columns>
        <asp:BoundField DataField="CodeId" HeaderText="File Name" />
        <asp:TemplateField>
            <ItemTemplate>
                <asp:LinkButton ID="lnkDownload" Text = "Download" CommandName="Download"  CommandArgument = '<%# Eval("Code") %>' runat="server" ></asp:LinkButton>
            </ItemTemplate>
        </asp:TemplateField>
    
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







        </asp:GridView>
              
        </div>
       
        

    
    
    
    
    
    
    
    
 
		
		<!--// main-w3layouts-form -->
		<!-- Social icons -->
		<!--// Social icons -->
	</div>
	<!--// Main-Content-->
	<!-- copyright -->
	</form>
</body>
</html>
