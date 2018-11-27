<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>BuyThings</title>
		<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
		<link href="https://fonts.googleapis.com/css?family=Lora|Montserrat" rel="stylesheet">
		<link rel="stylesheet" href="Main.css">
		<link rel="stylesheet" href="css/font-awesome.min.css">
	</head>

	<body>
		<div class="padre">
			<div class="header">
				<div class="menu margen-interno">
					<div class="logo">
						<a href="Main.html">BuyThings</a>
					</div>
					<div class="buscador">
						<input type="text" name="search" placeholder="buscar">
					</div>
					<div class="nav">
						     <%
                             if(session.getAttribute("ID") != null)
                              {
                             
                            Blob ImagenBloob = (Blob)session.getAttribute("FotoPerfil");
                            byte[] ImagenBits = Base64.getEncoder().encode(ImagenBloob.getBytes(1,(int)ImagenBloob.length()));
                            String ImagenString = new String(ImagenBits , "UTF-8");

                             out.println("<div class='login-container'>"+
                                          "<a href='Perfil.jsp'>"+
                                          "<img src='data:image/jpeg;base64," +ImagenString+
                                          "' style='width:25px;height:25px;'>"+
                                          session.getAttribute("Alias")+"</a>"+
                                          "</div>");

                              }
                              else
                              {
                              out.println("<a href='Registro.jsp'><span>Registrarse</span></a>"+
                                          "<a href='Login.jsp'><span>Inicio de sesión</span></a>");       
                               if(request.getParameterMap().containsKey("Msj"))
                                 out.print("<p style='color:red;'>Usuario o contrasena invalidos</p>  ");               
                              }
                             %>
						
						
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
				<div class="principal margen-interno">
					<div class="info"></div>
					<marquee>	<img src="http://www.masgamers.com/wp-content/uploads/2017/06/Game-Pass-3.jpg"> <br></marquee>

				</div>
			</div>
			<section class="section margen-interno">
				<div class="videos">
					<div class="tema">
						<div class="video">
							<img src="Space.png" alt="">
							<a href="#">Compar..</a>
						</div>
						<div class="video">
							<img src="Space.png" alt="">
							<a href="#">Compar...</a>
						</div>
						<div class="video">
							<img src="Space.png" alt="">
							<a href="#">Compar...</a>
						</div>
					</div>
					<div class="tema">
						<div class="video">
							<img src="Space.png" alt="">
							<a href="#">Compar...</a>
						</div>
						<div class="video">
							<img src="Space.png" alt="">
							<a href="#">Compar...</a>
						</div>
						<div class="video">
							<img src="Space.png" alt="">
							<a href="#">Compar...</a>
						</div>
					</div>
					<div class="tema">
						<div class="video">
							<img src="Space.png" alt="">
							<a href="#">Compar...</a>
						</div>
						<div class="video">
							<img src="Space.png" alt="">
							<a href="#">Compar...</a>
						</div>
						<div class="video">
							<img src="Space.png" alt="">
							<a href="#">Compar...</a>
						</div>
					</div>
					<div class="tema">
						<div class="video">
							<img src="Space.png" alt="">
							<a href="#">Compar...</a>
						</div>
						<div class="video">
							<img src="Space.png" alt="">
							<a href="#">Compar...</a>
						</div>
						<div class="video">
							<img src="Space.png" alt="">
							<a href="#">Compar...</a>
						</div>
					</div>
				</div>
				<aside class="aside">
					<div class="VideoJuegos">
						<h1>Juegos</h1>
						<a href="#">Populares</a>
						<a href="#">Recientes</a>
						<a href="#">Free-to-play</a>
						<a href="#">Clasicos</a>
					</div>
					<div class="categorias">
						<h1>Categorias</h1>
						<a href="#">Disparos</a>
						<a href="#">Pelea</a>
						<a href="#">Arcade</a>
						<a href="#">Aventura</a>
					</div>
				</aside>	
			</section>
			<footer class="footer margen-interno">
				<nav class="pie">
					<a href="#">&copy;Desarrollado por BuyThings</a>
				</nav>
			</footer>
		</div>
		
	</body>
</html>