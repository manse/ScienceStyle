<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="ja" xml:lang="ja">
<head>
<meta http-equiv="content-type" content="text/html; charset=[+modx_charset+]" />
<title>MODX CMF Manager Login</title>
<style type="text/css">
html, body {
	overflow: hidden;
	width: 100%;
	height: 100%;
	background: #fbfbfb;
}
html, body, form {
	padding: 0;
	margin: 0;
}
body, td {
	font-size: 10pt;
	font-family:"Helvetica Neue",Helvetica,Arial,Tahoma,Verdana,"Hiragino Kaku Gothic Pro",Meiryo,"MS PGothic",sans-serif;
	color: #333;
}
form {
	width: 400px;
	margin: 0 auto;
	border-radius: 4px;
}
#wrapper {
	border-top: 12px solid #222;
}
#header {
	padding-bottom: 10px;
}
#logo {
	margin-left: -66px;
}
#site_name {
	display: block;
	color: #888;
	font-size: 9pt;
	font-weight: bold;
	padding: 3px 0 8px;
	text-decoration: none;
}

.text {
	background:#fff;
	color: #333;
	border-color:#ccc;
	border-style:solid;
	border-width:1px;
	padding:0 6px;
	height: 40px;
	margin:0 2px 0 0;
	font-size:12pt;
	font-family:inherit;
	vertical-align:baseline;
	-webkit-border-radius:4px;
	   -moz-border-radius:4px;
	    -ms-border-radius:4px;
	     -o-border-radius:4px;
	        border-radius:4px;
	-webkit-transition:border-color 0.3s,box-shadow .3s;
	-moz-transition:border-color 0.3s,box-shadow .3s;
	-ms-transition:border-color 0.3s,box-shadow .3s;
	-o-transition:border-color 0.3s,box-shadow .3s;
	transition:border-color 0.3s,box-shadow .3s;
}
.text:focus {
	outline:none;
	background:#fff;
	border-color:#43ab26;
	border-style:solid;
	border-width:1px;
	box-shadow:0 0 1px rgba(0,0,0,0.05) inset,0 0 6px rgba(142,235,99,0.8);
}
.input {
	position: relative;
	height: 42px;
	margin-bottom: 10px;
}
.input .text {
	padding-right: 0;
	width: 300px;
	padding-left: 100px;
}
.input label {
	position: absolute;
	color: #aaa;
	line-height: 42px;
	width: 80px;
	display: block;
	text-align: right;
}
input:-webkit-autofill {
    color: #fff !important;
}

.rememberme {
	font-size: 8pt;
}

.login {
	cursor: pointer;
	-webkit-border-radius:4px;
	   -moz-border-radius:4px;
	    -ms-border-radius:4px;
	     -o-border-radius:4px;
	        border-radius:4px;
	float: right;
	margin-right: -1px;
	border: 0;
	font-size:10pt;
	text-shadow:0 1px 0 #fff;
	font-weight:700;
	outline: 0;
	height: 32px;
	padding:0 15px;
	color: #fff;
	box-shadow: -1px -1px 0 #658f1a, 1px 1px 0 #658f1a, 1px -1px 0 #658f1a, -1px 1px 0 #658f1a, 0 0 2px rgba(0,0,0,0.4),0 1px 1px rgba(0,0,0,0.8);
	text-shadow:0 -1px 0 #2B5F0C;
	background:#66901b;
	background:-moz-linear-gradient(#8aae4b,#66901b);
	background:-webkit-gradient(linear,0 0,0 100%,from(#8aae4b),to(#66901b));
	background:-o-linear-gradient(#8aae4b,#66901b);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr=#8aae4b,endColorstr=#66901b);
}
.login:hover {
	background:#90bf40;
	background:-moz-linear-gradient(#90bf40,#82af33);
	background:-webkit-gradient(linear,0 0,0 100%,from(#90bf40),to(#82af33));
	background:-o-linear-gradient(#90bf40,#82af33);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr=#90bf40,endColorstr=#82af33);
}
.login:active {
	background:#749c2f;
	background:-moz-linear-gradient(#749c2f,#4b7109);
	background:-webkit-gradient(linear,0 0,0 100%,from(#749c2f),to(#4b7109));
	background:-o-linear-gradient(#749c2f,#4b7109);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr=#749c2f,endColorstr=#4b7109);
}
.loginCaptcha {
	display: block;
	padding-bottom: 5px;
}
input[name="captcha_code"] {
	height: auto;
	padding: 4px;
	font-size: 10pt;
	margin-left: 5px;
}

.control {
	padding-top: 5px;
}

#footer {
	font-size:8pt;
	padding-top: 15px;
}
#footer, #footer a {
	color: #aaa;
}
.clearfix {
	zoom:1;
}
.clearfix:after{
	content: ""; 
	display: block; 
	clear: both;
}
</style>
<script type="text/javascript">
window.onload = function() {
	var input = document.getElementById("username");
	if (input) input.focus();
};
</script>
</head>
<body>
<table width="100%" height="85%" border="0" cellspacing="0" cellpadding="0" id="wrapper">
	<tr>
		<td>
			<form method="post" action="processors/login.processor.php">
				[+OnManagerLoginFormPrerender+]
				<div id="header">
					<img src="media/style/[+theme+]/images/icons/login_logo.png" alt="[+site_name+]" id="logo" />
					<a href="../" id="site_name">[+site_name+]</a>
				</div>
				<div id="container">
					<div class="input">
						<label for="username">[+username+]</label><input type="text" class="text" name="username" id="username" tabindex="1" value="[+uid+]" />
					</div>
					<div class="input">
						<label for="password">[+password+]</label><input type="password" class="text" name="password" id="password" tabindex="2" value="" />
					</div>
					<p class="caption">[+login_captcha_message+]</p>
					<div>
						[+captcha_image+]
					</div>[+captcha_input+]

					<div class="clearfix control">
						<input type="checkbox" id="rememberme" name="rememberme" tabindex="4" value="1" class="checkbox" />
						<label for="rememberme" class="rememberme">[+remember_username+]</label> <input type="submit" class="login" id="submitButton" value="[+login_button+]" />
					</div>
					[+OnManagerLoginFormRender+]
				</div>
				<div id="footer">
					&copy; 2005-[+ml_year+] by the <a href="http://modx.com/" target="_blank">MODX</a>. MODX&trade; is licensed under the GPL.
				</div>
			</form>
		</td>
	</tr>
</table>
</body>
</html>