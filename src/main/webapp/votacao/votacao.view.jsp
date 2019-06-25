<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
    <title>Votar</title>
    
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
    <body>
        <style type="text/css">
            .confirm, .null, .clear, .other {
              color: #000;
              padding: 16px 20px;
              cursor: pointer;
            }

            .confirm {background-color: #4CAF50;}

            .null {background-color: #efefef;}

            .clear {background-color: #FF5733;}

            .confirm:hover {
              background-color: #4CAF50;
              opacity: 2;
            }

            .clear:hover {
              background-color: #FF5733;
              opacity: 2;
            }

            .null:hover {
              background-color: #efefef;
              opacity: 2;
            }
        </style>

        <div class="container">
            <div class="row">
                <div class="col-md-4 col-md-offset-4">             

                    <form method="POST" action="/Eleicao/votar" class="fh5co-form animate-box" data-animate-effect="fadeIn">
                        <h2>Votação</h2>
                        <div class="form-group">
                            <label for="candidato" class="sr-only">Candidato</label>
                            <input type="text" placeholder="Candidato" name="candidato" class="form-control" id="candidato" oninput="changeInput()" required/>
                        </div>
                        <div class="form-group">
                            <label for="partido" class="sr-only">Partido</label>
                            <input type="text" class="form-control" id="partido" placeholder="Partido" style="background-color: #FFFFFF;" readonly/>
                        </div>

                        <div class="form-group">
                            <button style="margin:0;margin-top: 20px;width:100%;" class="btn confirm" onclick="vote()">CONFIRMA</button> 

                            <button style="margin:0;margin-top: 20px;width:100%;" class="btn null" onclick="vote()">BRANCO</button>

                            <button style="margin:0;margin-top: 20px;width:100%;" class="btn clear" onclick="corrige()">CORRIGE</button>

                            <!-- <button style="margin:0;margin-top: 20px;width:100%;" class="btn other" onclick="backPage('titulo')">Voltar</button> -->

                            <input type="hidden" id="user" name="user" value="${sessionScope.titulo}" />
                            <input type="hidden" id="voto" name="voto" />
                        </div>
                    </form>

                    <form method="POST" action="../Eleicao/" class="animate-box" data-animate-effect="fadeIn">
                        <div>
                            <input type="submit" value="SAIR" style="margin:0;margin-top: 20px;width:100%;" class="btn btn-primary">
                        </div>
                    </form>

                </div>

                    <span id="c_view" class="col-md-4 fh5co-form animate-box" data-animate-effect="fadeIn"><img id="imgCandidato" src="./votacao/images/0.png"></span>
            </div>

            <div align="right">
                <form action="../Eleicao/" class="animate-box" data-animate-effect="fadeIn">
                    <div class="">
                        <input type="submit" value="Sair" class="btn btn-primary">
                    </div>
                </form>
            </div>
        </div>
    
        <!-- jQuery -->
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.placeholder.min.js"></script>
        <script src="js/jquery.waypoints.min.js"></script>
        <script src="js/main.js"></script>
        <script type="text/javascript" src="./votacao/votacao.controller.js"></script>
        <script type="text/javascript" src="./services/service.js"></script>

    </body>
</html>