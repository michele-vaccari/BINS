<%-- 
    Document   : CouponForm
    Author     : Michele
--%>

<%@ page info="Modulo Coupon" %>
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
              
              <!-- Modulo Reparto -->
              <div class="col-md-12 mb">
                <form id="ward-form">
                  <div class="st-panel st-panel--border">
                    <div class="st-panel__cont">
                      
                      <!-- Intestazione Pannello -->
                      <div class="st-panel__header">
                        <div class="fluid-cols">
                          <div class="expand-col text-ellipsis"><span class="st-panel__title">Inserisci Coupon</span></div>
                        </div>
                      </div>
                      
                      
                      <div class="st-panel__content">
                        <div class="tab-content">
                          
                          <!-- Scheda Info -->
                          <div class="tab-pane active" role="tabpanel" id="info">
                            <div class="form-horizontal">
                              
                              <!-- Nome -->
                              <div class="form-group">
                                <label class="col-sm-2 mb control-label">Id Coupon</label>
                                <div class="col-sm-10 mb">
                                  <input class="form-control" type="text" placeholder="Id">
                                </div>
                              </div>
                              
                              <!-- Ente Erogatore -->
                              <div class="form-group">
                                <label class="col-sm-2 mb control-label">Ente Erogatore</label>
                                <div class="col-sm-10 mb">
                                  <input class="form-control" type="text" placeholder="Nome Ente">
                                </div>
                              </div>
                              
                              <!-- Importo -->
                              <div class="form-group">
                                <label class="col-sm-2 mb control-label">Importo</label>
                                <div class="col-sm-2 mb">
                                    <input class="form-control" type="text" placeholder="&euro;&nbsp;10.00">
                                </div>
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
    
  </body>
  
</html>