<%-- 
    Document   : StockForm
    Author     : Michele
--%>

<%@ page info="Modulo Giacenza" %>
<%@ page contentType="text/html" %>
<%@ page session="false" %>
<%@ page buffer="20kb" %>
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
    <link href="libs/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    
    <!-- Common Libs CSS -->
    <link href="css/libs.common.min.css" rel="stylesheet">
    
    <!-- Page Libs CSS -->
    <link href="libs/fancybox/jquery.fancybox.css" rel="stylesheet">
    <link href="libs/fancybox/helpers/jquery.fancybox-thumbs.css" rel="stylesheet">
    <link href="libs/cropper/cropper.min.css" rel="stylesheet">
    <link href="libs/duallistbox/bootstrap-duallistbox.min.css" rel="stylesheet">
    
    <!-- Just Bootstrap Theme -->
    <link href="css/just.css" rel="stylesheet"><!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
    
  </head>
  
  <body class="sidebar-collapsible sidebar-open">
    <div class="st-wrapper">
        
        <!-- Sidebar Menu -->
        <%@ include file="menu/SidebarMenu.jsp" %>
      
      <div class="st-main">
        
        <!-- Barra Superiore -->
        <div class="st-header">
          <div class="fluid-cols">
            <div class="min-col">
              <div class="st-header__menu">
                <button class="btn st-sidebar__toggle"><i class="fa fa-bars"></i></button>
              </div>
            </div>
            <div class="expand-col text-ellipsis">
              <div class="st-header__title"><span><%= getServletInfo() %></span>
              </div>
            </div>
            
            <!-- Admin Menu -->
            <%@ include file="menu/AdminMenu.jsp" %>
            
          </div>
        </div>
        
        <div class="st-content">
          <div class="container-fluid">
            <div class="row">
              
              <!-- Modulo Ordine -->
              <div class="col-md-12 mb">
                <form id="brand-form">
                  <div class="st-panel st-panel--border">
                    <div class="st-panel__cont">
                      
                      <!-- Intestazione Pannello -->
                      <div class="st-panel__header">
                        <div class="fluid-cols">
                          <div class="expand-col text-ellipsis"><span class="st-panel__title">Nuova Giacenza</span></div>
                          <div class="min-col">
                            
                            <!-- Schede Pannello
                            <div class="st-panel__tabs">
                              <ul class="nav nav-tabs" role="tablist">
                                <li class="active" role="presentation"><a href="#info" data-toggle="tab">Info Prodotto</a></li>
                                <li role="presentation"><a href="#product" data-toggle="tab">Giacenza</a></li>
                              </ul>
                            </div> -->
                            
                          </div>
                        </div>
                      </div>
                      
                      
                      <div class="st-panel__content">
                        <div class="tab-content">
                          <div class="form-horizontal">
                          
                            <!-- Id Prodotto -->
                            <div class="form-group">
                              <label class="col-sm-2 mb control-label">Id Prodotto</label>
                                <div class="col-sm-4 mb">
                                  <input class="form-control" type="text" disabled="disabled" placeholder="Id Prodotto">
                              </div>
                            </div>

                            <!-- EAN Prodotto -->
                            <div class="form-group">
                              <label class="col-sm-2 mb control-label">EAN Prodotto</label>
                                <div class="col-sm-4 mb">
                                  <input class="form-control" type="text" disabled="disabled" placeholder="EAN Prodotto">
                              </div>
                            </div>

                            <!-- Nome Prodotto -->
                            <div class="form-group">
                              <label class="col-sm-2 mb control-label">Nome Prodotto</label>
                                <div class="col-sm-8 mb">
                                  <input class="form-control" type="text" disabled="disabled" placeholder="Nome Prodotto">
                              </div>
                            </div>

                            <!-- Id Giacenza -->
                            <div class="form-group">
                              <label class="col-sm-2 mb control-label">Id Giacenza</label>
                                <div class="col-sm-4 mb">
                                  <input class="form-control" type="text" disabled="disabled" placeholder="Id Giacenza">
                              </div>
                            </div>

                            <!-- Quantita -->
                            <div class="form-group">
                                <label class="col-sm-2 mb control-label">Quantit&agrave;</label>
                                <div class="col-sm-1 mb">
                                  <input class="form-control" type="text" placeholder="2">
                              </div>
                            </div>

                            <!-- Peso Unitario -->
                            <div class="form-group">
                              <label class="col-sm-2 mb control-label">Peso Unitario</label>
                                <div class="col-sm-2 mb">
                                  <input class="form-control" type="text" placeholder="Grammi">
                              </div>
                            </div>

                            <!-- Prezzo Unitario -->
                            <div class="form-group">
                              <label class="col-sm-2 mb control-label">Prezzo Unitario</label>
                                <div class="col-sm-2 mb">
                                    <input class="form-control" type="text" placeholder="&euro;&nbsp;0.00">
                              </div>
                            </div>

                            <!-- Data di Scadenza -->
                            <div class="form-group">
                              <label class="col-sm-2 mb control-label">Data di Scadenza</label>
                                <div class="col-sm-2 mb">
                                  <input class="form-control" type="text" placeholder="10/10/2017">
                              </div>
                            </div>

                            <!-- Anni di Garanzia -->
                            <div class="form-group">
                              <label class="col-sm-2 mb control-label">Anni di Garanzia</label>
                                <div class="col-sm-1 mb">
                                  <input class="form-control" type="text" placeholder="2">
                              </div>
                            </div>

                          </div>
                        </div>
                      </div>
                      
                      <!-- Footer -->
                      <div class="st-panel__footer" style="padding: 10px 20px;">
                        <div class="fluid-cols">
                          <div class="expand-col"></div>
                          <div class="min-col">
                            <button class="btn btn-info">Invia</button>
                          </div>
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
    <script src="js/libs.common.min.js"></script>
    
    <!-- Common App Modules -->
    <script src="js/modules/app.js"></script>
    <script src="js/modules/layout/sidebar.js"></script>
    <script src="libs/bootbox/bootbox.min.js"></script>
    
  </body>
  
</html>