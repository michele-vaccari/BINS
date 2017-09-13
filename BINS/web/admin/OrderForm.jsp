<%-- 
    Document   : OrderForm
    Author     : Michele
--%>

<%@ page info="Modulo Ordine" %>
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
                          <div class="expand-col text-ellipsis"><span class="st-panel__title">Gestisci Ordine</span></div>
                          <div class="min-col">
                            
                            <!-- Schede Pannello -->
                            <div class="st-panel__tabs">
                              <ul class="nav nav-tabs" role="tablist">
                                <li class="active" role="presentation"><a href="#info" data-toggle="tab">Info</a></li>
                                <li role="presentation"><a href="#product" data-toggle="tab">Prodotti</a></li>
                              </ul>
                            </div>
                            
                          </div>
                        </div>
                      </div>
                      
                      
                      <div class="st-panel__content">
                        <div class="tab-content">
                          
                          <!-- Scheda Info -->
                          <div class="tab-pane active" role="tabpanel" id="info">
                            <div class="form-horizontal">
                              
                              <!-- Id -->
                              <div class="form-group">
                                <label class="col-sm-2 mb control-label">Id Ordine</label>
                                <div class="col-sm-2 mb">
                                  <input class="form-control" type="text" placeholder="Id Ordine">
                                </div>
                              </div>
                              
                              <!-- EAN -->
                              <div class="form-group">
                                <label class="col-sm-2 mb control-label">Data Ordine</label>
                                <div class="col-sm-2 mb">
                                  <input class="form-control" type="text" placeholder="10/10/2017">
                                </div>
                              </div>
                              
                              <!-- Nome -->
                              <div class="form-group">
                                <label class="col-sm-2 mb control-label">Nome Utente</label>
                                <div class="col-sm-10 mb">
                                  <input class="form-control" type="text" placeholder="Nome">
                                </div>
                              </div>
                              
                              <!-- Importo -->
                              <div class="form-group">
                                <label class="col-sm-2 mb control-label">Importo</label>
                                <div class="col-sm-10 mb">
                                    <input class="form-control" type="text" placeholder="&euro;&nbsp;100.00">
                                </div>
                              </div>
                              
                              <!-- Stato -->
                              <div class="form-group">
                                <label class="col-sm-2 mb control-label">Stato</label>
                                <div class="col-sm-10 mb">
                                  <div class="radio radio-inline radio-warning">
                                  <input id="rad4" name="radio" type="radio">
                                  <label for="rad4">In Attesa</label>
                                </div>
                                <div class="radio radio-inline radio-primary">
                                  <input id="rad1" name="radio" checked="checked" type="radio">
                                  <label for="rad1">In Lavorazione</label>
                                </div>
                                <div class="radio radio-inline radio-info">
                                  <input id="rad3" name="radio" type="radio">
                                  <label for="rad3">Spedito</label>
                                </div>
                                <div class="radio radio-inline radio-success">
                                  <input id="rad2" name="radio" type="radio">
                                  <label for="rad2">Consegnato</label>
                                </div>
                                </div>
                              </div>
                              
                            </div>
                          </div>
                          
                          <!-- Scheda Prodotti -->
                          <div class="tab-pane" role="tabpanel" id="product">
                                
                                <!-- Header Pannello -->
                                <div class="st-panel__header">
                                  <div class="fluid-cols">
                                    <div class="expand-col text-ellipsis"><span class="st-panel__title"><span>Prodotti</span><small id="products-info"></small></span></div>
                                    <div class="min-col">
                                      <div class="st-panel__form">
                                        <div class="st-inputbar hidden-xs">
                                          <div class="st-inputbar-input hidden-xs">
                                            <input class="form-control input-sm" id="products-search" type="text" placeholder="Cerca" style="width: 200px;">
                                          </div>
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                </div>

                                <!-- Tabella -->
                                <div class="st-panel__content">
                                  <div class="table-responsive table-responsive-bordered avoid-flicker" width="100%">
                                    <table class="table table-bordered table-filled table-striped table-hover" id="products-table" width="100%">

                                      <!-- Intestazione Tabella -->
                                      <thead>
                                        <tr>
                                          <th class="text-nowrap">Id Prodotto</th>
                                          <th class="text-nowrap content-width">Id Giacenza</th>
                                          <th class="text-nowrap content-width">Nome</th>
                                          <th class="text-nowrap content-width">Quantit&agrave;</th>
                                          <th class="text-nowrap content-width">Prezzo</th>
                                          <th class="text-center content-width">Azione</th>
                                        </tr>
                                      </thead>

                                      <!-- Contenuto Tabella -->
                                      <tbody>

                                        <tr data-product="1">
                                          <td class="text-nowrap content-width" data-filter="1">1</td>
                                          <td class="text-nowrap" data-filter="1234567890ABC">1234567890ABC</td>
                                          <td class="text-center" data-filter="Nome1">Nome1</td>
                                          <td class="text-center content-width" data-filter="3">3</td>
                                          <td class="text-center" data-filter="10.00">&euro;&nbsp;10.00</td>
                                          <td class="text-center st-products__action">
                                            <div class="btn-group dropdown"><a class="btn btn-default btn-xs" href="#">Visualizza</a>
                                              <button class="btn btn-default btn-xs dropdown-toggle" type="button" data-toggle="dropdown" data-container="body"><span class="caret"></span></button>
                                              <ul class="dropdown-menu dropdown-menu-right">
                                                <li><a class="products-edit" data-product="1">Modifica</a></li>
                                                <li><a class="products-stock" data-product="1">Giacenza</a></li>
                                                <li><a class="products-remove" data-product="1">Elimina</a></li>
                                              </ul>
                                            </div>
                                          </td>
                                        </tr>

                                        <tr data-product="3">
                                          <td class="text-nowrap" data-filter="3">3</td>
                                          <td class="text-nowrap" data-filter="1234567890ADE">1234567890ADE</td>
                                          <td class="text-center" data-filter="Nome3">Nome3</td>
                                          <td class="text-center" data-filter="7">7</td>
                                          <td class="text-center" data-filter="90.00">&euro;&nbsp;90.00</td>
                                          <td class="text-center st-products__action">
                                            <div class="btn-group dropdown"><a class="btn btn-default btn-xs" href="#">Visualizza</a>
                                              <button class="btn btn-default btn-xs dropdown-toggle" type="button" data-toggle="dropdown" data-container="body"><span class="caret"></span></button>
                                              <ul class="dropdown-menu dropdown-menu-right">
                                                <li><a class="products-edit" data-product="3">Modifica</a></li>
                                                <li><a class="products-stock" data-product="3">Giacenza</a></li>
                                                <li><a class="products-remove" data-product="3">Elimina</a></li>
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
                                        <select class="form-control" id="products-length" style="width: auto;" data-minimum-results-for-search="Infinity" data-dropdown-css-class="contented">
                                          <option value="10">10</option>
                                          <option value="25">25</option>
                                          <option value="50">50</option>
                                          <option value="-1">Tutti</option>
                                        </select>
                                      </div>
                                    </div>
                                    <div class="pull-right">
                                      <div class="pagination-sm" id="products-pagination"></div>
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
    
    <!-- Page Libs JS -->
    <script src="libs/datatables/js/jquery.dataTables.js"></script>
    <script src="libs/datatables/js/dataTables.bootstrap.js"></script>
    <script src="libs/datatables/js/dataTables.select.js"></script>
    <script src="libs/bootbox/bootbox.min.js"></script>
    
    <!-- Page App Modules -->
    <script src="js/modules/widgets/table.js"></script>
    <script src="js/modules/pages/orderForm.js"></script>
    
  </body>
  
</html>