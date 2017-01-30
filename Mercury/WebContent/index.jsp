<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="view/css/main.css">
<link rel="stylesheet" href="view/css/bootstrap.min.css">
<link rel="stylesheet" href="view/css/bootstrap-theme.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="view/js/main.js"></script>

<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>

<script type="text/javascript">
$( function() {
	$('#calendario').datepicker({

	});  	
} );
</script>

<title>Mercury</title>


</head>
<body>

	<div class="menu-bar">
		<a href="index.html"><div class="element-menu logo">Mercury</div></a>
		<div class="element-menu login">Login</div>
		<div class="element-menu user-menu">
			<div class="user-menu-img"></div>
			<div class="user-menu-name">Fabrizio SPA</div>
		</div>
	</div>	
	<div id="menu-login-false" class="menu-drop" style="display: none;">
		<form action="" method="">
			<div class="box-login-text text-12">Login</div>
			<div class="box-login-form">
				<input class="input-form login-form" type="text" name="user" placeholder="Username..."></input>
			</div>
			<div class="box-login-form">
				<input class="input-form login-form" type="password" name="pass" placeholder="Password..."></input>
			</div>
			<div class="box-login-form">
				<input class="button-custom button-submit" type="submit" value="Log In"></input>
			</div>
			<div class="box-login-text text-08">Non hai mai effetuato l'accesso?</div>
		</form>
		<div class="box-login-form">
			<a href="registration.html"><button class="button-custom button-registration">Registrati</button></a>
		</div>
	</div>

	<div id="menu-login-true" class="menu-drop" style="display: none;">
		<div class="box-menu">
			<a href="profile.html"><div class="box-menu-text">Il mio profilo</div></a>
		</div>
		<div class="box-menu">
			<a href="create_event.html"><div class="box-menu-text">Crea evento</div></a>
		</div>
		<div class="box-menu">
			<div class="box-menu-text">I tuoi eventi</div>
		</div>
		<div class="box-menu">
			<div class="box-menu-text">Modifica profilo</div>
		</div>
		<div class="box-menu">
			<div class="box-menu-text">Logout</div>
		</div>
	</div>


	<div class="container-2">
	
		<div class="container-form">
			<form action="" method="">
				<div class="box-form">
					<input class="input-form search-form" placeholder="Ricerca evento..."></input>
					<div class="search-button"></div>
					<div id="setting-button" class="setting-button"></div>
				</div>
			</form>

			<form action="" method="">
				<div class="box-spec">
					<div class="box-form">
						<div class="text-form">Ricerca per localita'</div>
						<input class="input-form spec-form" placeholder="Regione..."></input>
						<input class="input-form spec-form" placeholder="Provincia..."></input>
						<input class="input-form spec-form" placeholder="Comune..."></input>
					</div>
					<div class="box-form">
						<div class="text-form">Ricerca per tipologia</div>
						<select class="box-select">
							<option class="box-option" value="film">Film</option>
							<option value="concerto">Concerto</option>
							<option value="mercedes">Teatro</option>
							<option value="mostra">Mostra</option>
							<option value="sagra">Sagra</option>
						</select>
					</div>
					<div class="box-form" >
						<div class="text-form">Ricerca per data</div>
						<input class="input-form date-form" id="calendario" placeholder="Mostra calendario"></input>
					</div>
				</div>
			</form>

		</div>
	</div>

</body>
</html>