<%-- 
    Document   : home
    Author     : Michele
--%>

<%@ page info="Login" %>
<%@ page contentType="text/html" %>
<%@ page session="false" %>
<%@ page buffer="30kb" %>
<%@ page errorPage="/ErrorPage.jsp" %>

<!DOCTYPE html>
<html lang="it">
  
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="noindex">
    <meta name="author" content="Michele Vaccari"/>
    <title>BINS - <%= getServletInfo() %></title>
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
      <div class="st-auth">
        <div class="st-auth__cont">
          <div class="st-panel">
            <div class="st-panel__cont">
              <div class="st-panel__header">
                <div class="fluid-cols">
                  <div class="expand-col"><span class="st-panel__title"><span>Login</span></span></div>
                </div>
              </div>
              <div class="st-panel__content">
                <form class="form" id="login-form" action="index.html" method="post">
                  <div class="form-group">
                    <input class="form-control" id="login-email" type="email" placeholder="Email" required>
                  </div>
                  <div class="form-group">
                    <input class="form-control" id="login-password" type="password" placeholder="Password" required>
                  </div>
                  <div class="form-group">
                    <div class="fluid-cols">
                      <div class="expand-col text-ellipsis">
                        <div class="checkbox">
                          <input id="login-remember" type="checkbox" checked="checked">
                          <label for="login-remember">Ricorda</label>
                        </div>
                      </div>
                      <div class="min-col">
                        <div class="btn-group btn-group-inline">
                          <button class="btn btn-info" id="login-submit" type="submit">Login</button>
                        </div>
                      </div>
                    </div>
                  </div>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    
      <!-- Common Libs JS -->
    <script src="js/libs.common.min.js"></script><!-- Common App Modules -->
    <script src="js/modules/app.js"></script><!-- Page Libs JS -->
    <script src="libs/bootstrap-validator/validator.min.js"></script><!-- Page App Modules -->
    <script src="js/modules/pages/auth.js"></script>
  </body>
  
</html>