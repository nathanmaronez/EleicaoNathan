<%@ page language="java" contentType="text/html; charset=UTF-8"
		pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
		<head>
		<title>Index</title>
          
		<script type="text/javascript" src="./services/jquery.js"></script>
		<script type="text/javascript" src="./services/service.js"></script>
		
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="keywords" content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />

    <link rel="shortcut icon" href="favicon.ico">

    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,700,300' rel='stylesheet' type='text/css'>
    
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/animate.css">
    <link rel="stylesheet" href="css/style.css">

    <!-- Modernizr JS -->
    <script src="js/modernizr-2.6.2.min.js"></script>

    </head>
    <body style="text-align: center;">

        <div class="container">
            <div class="row">
                <center> 

										<form class="container" action="/Eleicao/autenticar" method="POST" class="fh5co-form animate-box" data-animate-effect="fadeIn">
											<h1 style="margin-top: 100px;">ELEIÇÕES 2019	</h1>

											<div style="margin-top: 70px;" class="form-group">
                        <label for="titulo" class="sr-only">Titulo de Eleitor</label>
                        <input style="height: 50px;" type="text" name="titulo" id="titulo" class="form-control" placeholder="Titulo de Eleitor" required/>
                      </div>

											<div style="margin-top: 70px;" class="form-group">
												<label for="senha" class="sr-only">Senha</label>
                      	<input style="height: 50px;" type="password" name="senha" id="senha" class="form-control" placeholder="Senha de Eleitor" required/>
                      </div>

											<div style="margin-top: 70px;" class="form-group">
												<button class="btn btn-primary form-control" type="submit">Entrar</button>
                      </div>
										</form>

								</center>
						</div>
				</div>
		
    <!-- jQuery -->
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.placeholder.min.js"></script>
    <script src="js/jquery.waypoints.min.js"></script>
    <script src="js/main.js"></script>
    <script src="js/check.js"></script>


		</body>
</html>