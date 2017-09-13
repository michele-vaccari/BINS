<%-- 
    Document   : FeatureView
    Author     : Michele
--%>

<%@ page info="Gestione Caratteristiche" %>
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
    <link href="libs/datatables/css/dataTables.bootstrap.css" rel="stylesheet">
    <link href="libs/datatables/css/select.bootstrap.css" rel="stylesheet">
    
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
              
              <div class="col-sm-12">
                <div class="st-panel">
                  <div class="st-panel__cont">
                      
                    <!-- Header Pannello -->
                    <div class="st-panel__header">
                      <div class="fluid-cols">
                        <div class="expand-col text-ellipsis"><span class="st-panel__title"><span>Caratteristiche</span><small id="features-info"></small></span></div>
                        <div class="min-col">
                          <div class="st-panel__form">
                            <div class="st-inputbar hidden-xs">
                              <div class="st-inputbar-input hidden-xs">
                                <input class="form-control input-sm" id="features-search" type="text" placeholder="Cerca" style="width: 200px;">
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                    
                    <!-- Tabella -->
                    <div class="st-panel__content">
                      <div class="table-responsive table-responsive-bordered avoid-flicker" width="100%">
                        <table class="table table-bordered table-filled table-striped table-hover" id="features-table" width="100%">
                          
                          <!-- Intestazione Tabella -->
                          <thead>
                            <tr>
                              <th class="text-nowrap">Nome</th>
                              <th class="text-center content-width">Prodotti Correlati</th>
                              <th class="text-nowrap content-width">Gestito da</th>
                              <th class="text-center content-width">Azione</th>
                            </tr>
                          </thead>
                          
                          <!-- Contenuto Tabella -->
                          <tbody>
                            
                            <tr data-feature="Caratteristica1">
                              <td class="text-nowrap" data-filter="Caratteristica1">Caratteristica1</td>
                              <td class="text-center" data-filter="3">3</td>
                              <td class="text-nowrap" data-filter="Admin2">Admin2</td>
                              <td class="text-center st-features__action">
                                <div class="btn-group dropdown"><a class="btn btn-default btn-xs" href="#">Visualizza</a>
                                  <button class="btn btn-default btn-xs dropdown-toggle" type="button" data-toggle="dropdown" data-container="body"><span class="caret"></span></button>
                                  <ul class="dropdown-menu dropdown-menu-right">
                                    <li><a class="features-edit" data-feature="Caratteristica1">Modifica</a></li>
                                    <li><a class="features-remove" data-feature="Caratteristica1">Elimina</a></li>
                                  </ul>
                                </div>
                              </td>
                            </tr>
                            
                            <tr data-feature="Caratteristica2">
                              <td class="text-nowrap" data-filter="Caratteristica2">Caratteristica2</td>
                              <td class="text-center" data-filter="1">1</td>
                              <td class="text-nowrap" data-filter="Admin1">Admin1</td>
                              <td class="text-center st-features__action">
                                <div class="btn-group dropdown"><a class="btn btn-default btn-xs" href="#">Visualizza</a>
                                  <button class="btn btn-default btn-xs dropdown-toggle" type="button" data-toggle="dropdown" data-container="body"><span class="caret"></span></button>
                                  <ul class="dropdown-menu dropdown-menu-right">
                                    <li><a class="features-edit" data-feature="Caratteristica2">Modifica</a></li>
                                    <li><a class="features-remove" data-feature="Caratteristica2">Elimina</a></li>
                                  </ul>
                                </div>
                              </td>
                            </tr>
                            
                          </tbody>
                          
                        </table>
                        
                      </div>
                      
                      <!-- Footer Pannello -->
                      <div class="st-users__footer clearfix">
                        <div class="pull-left">
                          <div class="select2-sm select2-contented">
                            <select class="form-control" id="features-length" style="width: auto;" data-minimum-results-for-search="Infinity" data-dropdown-css-class="contented">
                              <option value="10">10</option>
                              <option value="25">25</option>
                              <option value="50">50</option>
                              <option value="-1">Tutti</option>
                            </select>
                          </div>
                        </div>
                        <div class="pull-right">
                          <div class="pagination-sm" id="features-pagination"></div>
                        </div>
                      </div>
                      
                    </div>
                  </div>
                </div>
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
    
    <!-- Page Libs JS -->
    <script src="libs/datatables/js/jquery.dataTables.js"></script>
    <script src="libs/datatables/js/dataTables.bootstrap.js"></script>
    <script src="libs/datatables/js/dataTables.select.js"></script>
    <script src="libs/bootbox/bootbox.min.js"></script>
    
    <!-- Page App Modules -->
    <script src="js/modules/widgets/table.js"></script>
    <script src="js/modules/pages/featureView.js"></script>
    
  </body>
  
</html>