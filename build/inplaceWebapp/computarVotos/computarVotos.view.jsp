<%@ page language="java"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
    
<%@page import="dao.CandidatoDao"%>
<%@page import="model.Candidato"%>
<%@page import="java.util.List"%>

<!DOCTYPE html>
<html>
    <head>
    <title>Relatório</title>
    
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
		    <div class="animate-box" data-animate-effect="fadeIn" style="text-align: center;">
		    	<h2>Relatório de Votos</h2>
            	<% List<Candidato> candidatos = new CandidatoDao().findAll(); %>
				    <% for(Candidato cand : candidatos) { %>
            			<div style="margin-top: 100px;">
		                    <span style="text-align: center;">
		                    <div class="form-group"><img id="imgCandidato" src="./votacao/images/<%=cand.getNumero()%>.png" style="width:15%;border-radius:50%;"></div>
		                    <div class="form-group"> <b>Numero:</b><%=cand.getNumero()%></div>
		                    <div class="form-group"> <b>Nome:</b><%=cand.getNome()%></div>
		                    <div class="form-group"> <b>Partido:</b><%=cand.getPartido()%></div>
		                    <div class="form-group"> <b>Votos:</b><%=cand.getVotos()%></div>
		                    </span>
		                </div>
					<%} 
				%>
            </div>

            <div align="center" style="margin-bottom: 20px;">
                <form action="../Eleicao" method="POST" class="animate-box" data-animate-effect="fadeIn">
                    <div class="">
                        <input type="submit" value="SAIR" class="btn btn-primary form-control">
                    </div>
                </form>
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