﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication1.Login" %>
<!DOCTYPE html>
<html lang="tr">
<head>
	<title>Giriş Yapınız</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="Login1/images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Login1/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Login1/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Login1/vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="Login1/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Login1/vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Login1/css/util.css">
	<link rel="stylesheet" type="text/css" href="Login1/css/main.css">
<!--===============================================================================================-->
</head>
<body>
	
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-pic js-tilt" >
					<img src="Login1/images/img-01.png" alt="IMG">
				</div>
				<form class="login100-form validate-form" runat="server">
					<span class="login100-form-title">
						ADMİN GİRİŞİ
					</span>

					<div class="wrap-input100 validate-input" data-validate = "Kullanıcı Adı Gerekli">		
						<asp:TextBox ID="txtUserName" runat="server" CssClass="input100"  placeholder="Kullanıcı Adı"></asp:TextBox>
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-envelope" aria-hidden="true"></i>
						</span>
					</div>

					<div class="wrap-input100 validate-input" data-validate = "Şifre Gerekli">					
						<asp:TextBox ID="txtSifre" TextMode="Password" runat="server" CssClass="input100"  placeholder="Şifre"></asp:TextBox>
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-lock" aria-hidden="true"></i>
						</span>
					</div>
					
					<div class="container-login100-form-btn">
						
						<asp:Button ID="Button1" runat="server" Text="Giriş"  CssClass="login100-form-btn" OnClick="Button1_Click"/>
					    <br />
                       <p style="align-content:center">
						<asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label></p>
					</div>										
				</form>
			</div>
		</div>
	</div>
	
	

	
<!--===============================================================================================-->	
	<script src="Login1/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="Login1/vendor/bootstrap/js/popper.js"></script>
	<script src="Login1/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="Login1/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="Login1/vendor/tilt/tilt.jquery.min.js"></script>
	<script >
		$('.js-tilt').tilt({
			scale: 1.1
		})
    </script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>

</body>
</html>