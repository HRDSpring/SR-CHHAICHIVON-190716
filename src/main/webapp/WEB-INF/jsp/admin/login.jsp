<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en-US">
	<head>
		<meta charset="utf-8" />
		<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
		<title>Login</title>

		<!-- mobile settings -->
		<meta name="viewport" content="width=device-width, maximum-scale=1, initial-scale=1, user-scalable=0" />

		<!-- WEB FONTS -->
		<link href="css-family=Open+Sans-300,400,700,800&subset=latin,latin-ext,cyrillic,cyrillic-ext.css" tppabs="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700,800&subset=latin,latin-ext,cyrillic,cyrillic-ext" rel="stylesheet" type="text/css" />

		<!-- CORE CSS -->
		<link href="bootstrap.min.css" tppabs="http://theme.stepofweb.com/Smarty/v1.1.4/Admin/HTML/assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
		
		<!-- THEME CSS -->
		<link href="essentials.css" tppabs="http://theme.stepofweb.com/Smarty/v1.1.4/Admin/HTML/assets/css/essentials.css" rel="stylesheet" type="text/css" />
		<link href="layout.css" tppabs="http://theme.stepofweb.com/Smarty/v1.1.4/Admin/HTML/assets/css/layout.css" rel="stylesheet" type="text/css" />
		<link href="green.css" tppabs="http://theme.stepofweb.com/Smarty/v1.1.4/Admin/HTML/assets/css/color_scheme/green.css" rel="stylesheet" type="text/css" id="color_scheme" />

	</head>
	<!--
		.boxed = boxed version
	-->
	<body>


		<div class="padding-15">

			<div class="login-box">

				<!-- login form -->
				<form action="http://theme.stepofweb.com/Smarty/v1.1.4/Admin/HTML/index.html" method="post" class="sky-form boxed">
					<header><i class="fa fa-users"></i> Sign In</header>

					<!--
					<div class="alert alert-danger noborder text-center weight-400 nomargin noradius">
						Invalid Email or Password!
					</div>

					<div class="alert alert-warning noborder text-center weight-400 nomargin noradius">
						Account Inactive!
					</div>

					<div class="alert alert-default noborder text-center weight-400 nomargin noradius">
						<strong>Too many failures!</strong> <br />
						Please wait: <span class="inlineCountdown" data-seconds="180"></span>
					</div>
					-->

					<fieldset>	
					
						<section>
							<label class="label">E-mail</label>
							<label class="input">
								<i class="icon-append fa fa-envelope"></i>
								<input type="email">
								<span class="tooltip tooltip-top-right">Email Address</span>
							</label>
						</section>
						
						<section>
							<label class="label">Password</label>
							<label class="input">
								<i class="icon-append fa fa-lock"></i>
								<input type="password">
								<b class="tooltip tooltip-top-right">Type your Password</b>
							</label>
							<label class="checkbox"><input type="checkbox" name="checkbox-inline" checked><i></i>Keep me logged in</label>
						</section>

					</fieldset>

					<footer>
						<button type="submit" class="btn btn-primary pull-right">Sign In</button>
						<div class="forgot-password pull-left">
							<a href="page-password.html" tppabs="http://theme.stepofweb.com/Smarty/v1.1.4/Admin/HTML/page-password.html">Forgot password?</a> <br />
							<a href="page-register.html" tppabs="http://theme.stepofweb.com/Smarty/v1.1.4/Admin/HTML/page-register.html"><b>Need to Register?</b></a>
						</div>
					</footer>
				</form>
				<!-- /login form -->

				<hr />

				<div class="text-center">
					Or sign in using:
				</div>


				<div class="socials margin-top-10 text-center"><!-- more buttons: ui-buttons.html -->
					<a href="#" class="btn btn-facebook"><i class="fa fa-facebook"></i> Facebook</a>
					<a href="#" class="btn btn-twitter"><i class="fa fa-twitter"></i> Twitter</a>
				</div>

			</div>

		</div>

		<!-- JAVASCRIPT FILES -->
		<script type="text/javascript">var plugin_path = 'assets/plugins/';</script>
		<script type="text/javascript" src="jquery-2.2.3.min.js" tppabs="http://theme.stepofweb.com/Smarty/v1.1.4/Admin/HTML/assets/plugins/jquery/jquery-2.2.3.min.js"></script>
		<script type="text/javascript" src="app.js" tppabs="http://theme.stepofweb.com/Smarty/v1.1.4/Admin/HTML/assets/js/app.js"></script>
	</body>
</html>