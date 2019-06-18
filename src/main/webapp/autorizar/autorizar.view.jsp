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
    <script type='text/javascript' src='./dashboards/Dashboard.controller.js'></script>
    <script type="text/javascript" src="./services/service.js"></script>

    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-md-offset-4">
                    <form class="fh5co-form animate-box" data-animate-effect="fadeIn" action="/Eleicao/autorizar" method="POST">
                        <h1>Autorizar voto</h1>
                        <div class="form-group"> 
                          <label for="usuario" class="sr-only">Titulo do Eleitor</label>
                          <input type="text" name="usuario" id="usuario" class="form-control" placeholder="Titulo do Eleitor" value="${requestScope.usuario}" required/>

                          <label for="nome" class="sr-only">Nome</label>
                          <input type="text" name="nome" id="nome" class="form-control" placeholder="Nome" value="${requestScope.nome}" style="background-color: #FFFFFF" readonly/>

                          <label for="liberado" class="sr-only">Voto autorizado</label>
                          <input type="text" name="liberado" id="liberado" class="form-control" placeholder="Voto autorizado" value="${requestScope.liberado}" style="background-color: #FFFFFF" readonly/>

                          <label for="javotou" class="sr-only">Possui registro de voto</label>
                          <input type="text" name="javotou" id="javotou" class="form-control" placeholder="Possui registro de voto" value="${requestScope.javotou}" style="background-color: #FFFFFF" readonly/>
                        </div>
                          
                        <input type="hidden" id="func" name="func" value="${sessionScope.titulo}" readonly/>  
                        <input type="hidden" id="tipo" name="tipo" value="${sessionScope.tipo}" readonly/>
                        <button class="btn btn-primary form-control" onclick="validar()">Validar</button>
                        <br>
                        <button class="btn btn-primary form-control" onclick="autorizar()" style="margin-top: 10px;">Autorizar</button>
                      </div>
                    </form>

                    <div class="col-md-4 col-md-offset-4" align="center" style="margin-top: 10px;">
                        <form action="../Eleicao" method="POST" class="animate-box" data-animate-effect="fadeIn">
                            <div class="">
                                <input type="submit" value="SAIR" class="btn btn-primary form-control">
                            </div>
                        </form>
                    </div>
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

    </body>
</html>