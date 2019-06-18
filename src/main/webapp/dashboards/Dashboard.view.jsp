<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
    <title>Home</title>
    
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
    <script type="text/javascript" src="./services/service.js"></script>

    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-md-offset-4">

                    <form class="fh5co-form animate-box" data-animate-effect="fadeIn" action="/Eleicao/redirect" method="POST">
                        <h1>Area do Usuario</h1>
                        <div class="form-group col-md-offset-4" style="margin:0;margin-top: 20px;width:100%;">

                            <button style="margin:0;margin-top: 20px;width:100%;" value="Votar" class="btn btn-primary" onclick="redirect('votacao')">Votar</button>

                            <button style="display:none;margin:0;margin-top: 20px;width:100%;" id="aut" class="btn btn-primary" onclick="autorizar('autorizar')">Autorizar</button>

                            <button style="display:none;margin:0;margin-top: 20px;width:100%;" id="computarVotos" class="btn btn-primary" onclick="autorizar('computarVotos')">Computar Votos</button>

                            <input type="hidden" name="titulo" id="titulo" value="${sessionScope.titulo}"/>
                            <input type="hidden" name="tipo" id="tipo" value="${sessionScope.tipo}"/>
                            <input type="hidden" name="pagina" id="pagina"/>
                            <input type="hidden" id="permissao" value="${sessionScope.permissao}" readonly/>
                            <input type="hidden" id="historico" value="${sessionScope.historico}" readonly/>
                            
                        </div>
                    </form>

                    <form action="../Eleicao" method="POST" class="animate-box" data-animate-effect="fadeIn">
                        <div style="margin-top: 10px;">
                            <input type="submit" value="SAIR" class="btn btn-primary form-control">
                        </div>
                    </form>
                </div>
            </div>
        </div>
    
    <!-- jQuery -->
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.placeholder.min.js"></script>
    <script src="js/jquery.waypoints.min.js"></script>
    <script src="js/main.js"></script>
    <script src="js/check.js"></script>
    <script type='text/javascript' src='./dashboards/Dashboard.controller.js'></script>


    </body>
</html>


<!---
<!DOCTYPE html>
<html>
    <head>
        <title>Zona Eleitoral</title>
        <meta charset="UTF-8">        
        <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
        <link rel="stylesheet" href="./css/bootstrap-responsive.min.css" type="text/css"/>
        <link rel="stylesheet" href="./css/styles.css" type="text/css"/>
        <script type='text/javascript' src='./dashboards/Dashboard.controller.js'></script>
        <script type="text/javascript" src="./services/service.js"></script>
    </head>
    
    <body>
        <form class="container" action="/Eleicao/redirect" method="POST">
            <h1>Area do Usuario</h1>     
                     
            <button class="confirm" onclick="redirect('votacao')">Votar</button>

            <button style="display: none;" id="aut" class="clear" onclick="autorizar('autorizar')">Autorizar</button>
            <button style="display: none;" id="computarVotos" class="other" onclick="autorizar('computarVotos')">Computar Votos</button>

            <input type="hidden" name="titulo" id="titulo" value="${sessionScope.titulo}"/>
            <input type="hidden" name="tipo" id="tipo" value="${sessionScope.tipo}"/>
            <input type="hidden" name="pagina" id="pagina"/>
            <input type="hidden" id="permissao" value="${sessionScope.permissao}" readonly/>
            <input type="hidden" id="historico" value="${sessionScope.historico}" readonly/>
          </form>
    </body>
</html>
--->