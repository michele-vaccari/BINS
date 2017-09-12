<%-- 
    Document   : ErrorPage
    Author     : Michele
--%>

<%@ page info="Error Page" %>
<%@ page contentType="text/html" %>
<%@ page session="false" %>
<%@ page buffer="10kb" %>
<%@ page isErrorPage="true" %>

<%@ page import="java.io.*" %>
<%@ page import="java.util.*"%>

<% int e= 500; %>

<!DOCTYPE html>
<html lang="it">
  
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="noindex">
    <meta name="author" content="Michele Vaccari"/>
    <title>BINS - Error <%= e %></title>
    <link rel="icon" type="image/png" href="img/favicon.png">
    <link rel="apple-touch-icon-precomposed" href="img/apple-touch-favicon.png">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet" type="text/css">
    <link href="libs/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="libs/font-awesome/css/font-awesome.min.css" rel="stylesheet"><!-- Common Libs CSS -->
    <link href="css/libs.common.min.css" rel="stylesheet"><!-- Page Libs CSS --><!-- Just Bootstrap Theme -->
    <link href="css/just.css" rel="stylesheet"><!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
  </head>
  
  <body>
    <div class="st-wrapper">
      <div class="st-error">
        <div class="st-error__cont">
          <div class="st-error__code">
              <%= e %>
          </div>
          <div class="st-error__message">
              <%
                  switch(e)
                  {
                      case 404: out.println("La pagina che stai cercando non &egrave; stata trovata.<br>Forse puoi tornare alla home page del sito e vedere se &egrave; possibile trovare quello che ti serve.");
                      break;
                      
                      case 500: out.println("Qualcosa &egrave; andato storto sul serio. Ci dispiace.<br>Per favore, riprova pi&ugrave; tardi.");
                      break;
                  }
              %>
          </div>
          <div class="st-error__back"><a class="btn btn-default" href="home.jsp"><i class="fa fa-angle-left"></i>&nbsp;&nbsp;Torna Indietro</a></div>
        </div>
      </div>
    </div>
    
    <!-- Common Libs JS -->
    <script src="js/libs.common.min.js"></script><!-- Common App Modules -->
    <script src="js/modules/app.js"></script><!-- Page Libs JS --><!-- Page App Modules -->
  </body>
  
</html>