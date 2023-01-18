<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="login.aspx.vb" Inherits="Lifesaver.login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>Life Saver Login</title>  
	
    <link href="style/style.css" rel="stylesheet" type="text/css" />
	<link rel="icon" href="files/logo.png" type="image/x-icon"/>
    <script type="text/javascript" src="js/sweet.js"></script>
    <script type="text/javascript" src="js/toast.js"></script>
    <link href="js/toast.css" rel="stylesheet" />
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
			<h2>Sign in</h2>
            <div class="autofill" style="margin-bottom:1rem;">
				    <asp:LinkButton ID="autofill" runat="server" CausesValidation="False">auto fill & login</asp:LinkButton>
			</div>
			<div class="inputBox">
            <span>User ID</span>
				<asp:TextBox ID="ID" runat="server"></asp:TextBox>
				<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="You need to fill Userid" ControlToValidate="ID" ForeColor="#FF5050"></asp:RequiredFieldValidator>
				
				<i></i>
			</div>
			<div class="inputBox">
            <span>Password</span>
				<asp:TextBox ID="PASS" runat="server" TextMode="Password"></asp:TextBox>
				<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="You need to fill password" ControlToValidate="PASS" ForeColor="#FF5050"></asp:RequiredFieldValidator>
				
                </div>
                <div class="links" style="margin-top:1rem;">
				<asp:CheckBox ID="Rememberme" runat="server" Text="Remember me" />
                <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/accountrecovar.aspx" CausesValidation="False">Forgot Password</asp:LinkButton>
			</div>
			
			<asp:Button ID="Button1" runat="server" Text="Login"/>
			
		</form>
		
	</div>
	</div>
	<div class="footer">*This login page is only for Blood Bank. Normal user please refure android app</div>
</body>
</html>