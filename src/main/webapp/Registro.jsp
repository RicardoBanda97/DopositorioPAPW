<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Registro</title>
		<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
		<link href="https://fonts.googleapis.com/css?family=Lora|Montserrat" rel="stylesheet">
		<link rel="stylesheet" href="Registro.css">
		<link rel="stylesheet" href="css/font-awesome.min.css">
	</head>

	<body>
		<div class="padre">
			<div class="header">
				<div class="menu margen-interno">
					<div class="logo">
						<a href="Start_Watch_2.0.html">BuyThings</a>
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
				<div class="registro margen-interno">
					
					<!--<img src="Image/portada.jpg" alt="" class="portada">-->

					<img src="Image/avatar3.png" alt="" class="avatar">

					<form action="Registro" method="post" class="forma" enctype="multipart/form-data">
						<input type="text" name="username" placeholder="Usuario">
						<input type="text" name="nombre" placeholder="Nombre">
						<input type="text" name="email" placeholder="Email">
						<input type="password" name="password" placeholder="Contraseña">
						<input type="text" name="city" placeholder="Ciudad">
						<input type="text" name="country" placeholder="País">
                        <input type="file" name="fotoperfil">
                        <input type="file" name="fotoportada">
						<input type="submit" name="submit" value="REGISTRATE">

					</form>
				</div>
			</div>
			<!--<section class="section margen-interno">
				<form>
					<p>Usuario</p>
					<input type="text" name="username" placeholder="Usuario">
					<p>Contraseña</p>
					<input type="text" name="password" placeholder="Enter Password">
					<input type="submit" name="submit" value="Login">
					<a href="#">Olvidaste tu contrseña</a>
				</form>
			</section>-->
			<footer class="footer margen-interno">
				<nav class="pie">
					<a href="#">&copy;Desarrollado por BuyThings</a>
				</nav>
			</footer>
		</div>
	</body>
</html>
