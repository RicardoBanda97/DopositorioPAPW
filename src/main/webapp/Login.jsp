<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>BuyThings - Inicia sesión</title>
		<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
		<link href="https://fonts.googleapis.com/css?family=Lora|Montserrat" rel="stylesheet">
		<link rel="stylesheet" href="Login.css">
		<link rel="stylesheet" href="css/font-awesome.min.css">
	</head>

	<body>
		<div class="padre">
			<div class="header">
					<div class="menu margen-interno">
						<div class="logo">
							<a href="Registro.html">BuyThings</a>
						</div>
						<div class="social">
							<div>
								<a href="#"><i class="fa fa-facebook-square" aria-hidden="true"></i></a>
							</div>
							<div>
								<a href="#"><i class="fa fa-twitter-square" aria-hidden="true"></i></a>
							</div>
						</div>
					</div>
					<div class="login margen-interno">
						<form action="Iniciar" method="post" class="forma">
							<input type="text" name="user" placeholder="Usuario o Email">
							<input type="password" name="password" placeholder="Contraseña">
							<span>
								<span>
									<input type="checkbox" name="remember" value="recordar">
								</span>
								<span>
									<label>Recordarme</label>
								</span>
							</span>
							<input type="submit" name="submit" value="INICIAR SESIÓN">
							<a href="#">¿Olvidaste tu contrseña?</a>
						</form>
					</div>
			</div>
			<footer class="footer margen-interno">
				<nav class="pie">
					<a href="#">&copy;Desarrollado por BuyThings</a>
				</nav>
			</footer>
		</div>
	</body>
</html>


<!---->