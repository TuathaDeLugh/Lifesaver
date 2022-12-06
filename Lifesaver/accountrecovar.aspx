<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="accountrecovar.aspx.vb" Inherits="Lifesaver.accountrecovar" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <link href="style/accrecov.css" rel="stylesheet" />
	<title>Life Saver Login</title>
    <link rel="icon" href="files/logo.png" type="image/x-icon"/>
    <script src="js/sweet.js"></script>
</head>
<body>
	  <div class="header">
		<ul>
			<li><a href="index.html">Life Saver</a></li>
		</ul>

	  </div>
	  <div class="design">
	  <div class="squre" style="--i:0;"></div>
	  <div class="squre" style="--i:1;"></div>
	  <div class="squre" style="--i:2;"></div>
	  <div class="squre" style="--i:3;"></div>
	  <div class="squre" style="--i:4;"></div>
	<div class="box">
		<form id="form1" runat="server">
			<h2>Reset Password</h2>
			<div class="inputBox">
            <span>Email</span>
				<asp:TextBox ID="TextBox1" runat="server" AutoPostBack="True"></asp:TextBox>
				
				<i></i>
			</div>
			<div class="inputBox">
            <span><asp:Label ID="Label1" runat="server" Text="Label">Question</asp:Label></span>
				<asp:TextBox ID="TextBox2" runat="server" Enabled="False" ></asp:TextBox>
              </div>  
	                <asp:Button ID="Button1" runat="server" Text="Check" Enabled="False"/>
           <div class="inputBox">
            <span><asp:Label ID="Label2" runat="server" Text="Label" >Enter  New Password</asp:Label></span>
				<asp:TextBox ID="TextBox3" runat="server" Enabled="False"  ></asp:TextBox>
              </div>
              <div class="inputBox">
            <span><asp:Label ID="Label3" runat="server" Text="Label" >Re-enter New Password</asp:Label></span>
				<asp:TextBox ID="TextBox4" runat="server" Enabled="False"></asp:TextBox>
              </div>
              
			<asp:Button ID="Button2" runat="server" Text="Reset Password" Enabled="False"/>
            <div class="inputBox">
            <center><asp:Label ID="Label4" runat="server" Text="error" Visible="False" 
                    ForeColor="#FF5050"></asp:Label></center>
			<span></span>
            </div>
		</form>
		
	</div>
	</div>
	<div class="footer">*This reset password page is only for Blood Bank. Normal user please refure android app</div>
</body>
</html>
