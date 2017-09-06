<!DOCTYPE html>
<html lang="it">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="noindex">
    <title>BINS - Admin</title>
    <link rel="icon" type="image/png" href="img/favicon.png">
    <link rel="apple-touch-icon-precomposed" href="img/apple-touch-favicon.png">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet" type="text/css">
    <link href="libs/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="libs/font-awesome/css/font-awesome.min.css" rel="stylesheet"><!-- Common Libs CSS -->
    <link href="css/libs.common.min.css" rel="stylesheet"><!-- Page Libs CSS -->
    <link href="libs/datatables/css/dataTables.bootstrap.css" rel="stylesheet">
    <link href="libs/datatables/css/select.bootstrap.css" rel="stylesheet">
    <link href="libs/datatables/css/buttons.bootstrap.css" rel="stylesheet">
    <link href="libs/fancybox/jquery.fancybox.css" rel="stylesheet">
    <link href="libs/fancybox/helpers/jquery.fancybox-thumbs.css" rel="stylesheet"><!-- Just Bootstrap Theme -->
    <link href="css/just.css" rel="stylesheet"><!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
  </head>
  <body class="sidebar-collapsible sidebar-open">
    <div class="st-wrapper">
        
      <!-- Menu laterale -->
        <%@includefile="menu.jsp"%>
      <!-- Fine menu laterale -->

      <div class="st-main">
        <div class="st-header">
          <div class="fluid-cols">
            <div class="min-col">
              <div class="st-header__menu">
                <button class="btn st-sidebar__toggle"><i class="fa fa-bars"></i></button>
              </div>
            </div>
            
            <!-- Titolo -->
            <div class="expand-col text-ellipsis">
              <div class="st-header__title"><span>Elenco Prodotti</span>
              </div>
            </div>
            
            <!-- User Popup -->
            <div class="min-col">
              <ul class="st-header__actions text-nowrap">                
                <li class="st-header__act st-header__user" data-toggle="popup" data-target="#user-popup"><i class="fa fa-user"></i>
                  <div class="st-popup st-userpopup" id="user-popup">
                    <div class="st-userpopup__cont">
                      <div class="st-userpopup__main">
                        <div class="st-userpopup__photo">
                          <div class="st-userpopup__img" style="background-image: url('img/apple-touch-favicon.png');"></div>
                        </div>
                        <div class="st-userpopup__info">
                          <!-- Nome utente -->
                          <div class="st-userpopup__name text-ellipsis">Michele</div>
                          <!-- Qualifica -->
                          <div class="st-userpopup__status"><span class="label label-success">Amministratore</span></div>
                        </div>
                      </div>
                      <!-- Menu popup -->
                      <ul class="st-userpopup__menu">
                        <li data-toggle="popup" data-target="#user-popup" data-method="hide"><a href="app-profile.html">
                            <div class="fluid-cols">
                              <div class="expand-col text-ellipsis"><span>Profilo</span></div>
                              <div class="min-col"><i class="fa fa-user"></i></div>
                            </div></a></li>
                        <li><a href="app-login.html">
                            <div class="fluid-cols">
                              <div class="expand-col text-ellipsis"><span>Esci</span></div>
                              <div class="min-col"><i class="fa fa-sign-out"></i></div>
                            </div></a></li>
                      </ul>
                      <!-- Fine menu popup -->
                    </div>
                  </div>
                </li>
              </ul>
            </div>
            
          </div>
        </div>
        <div class="st-crumbs">
          <div class="fluid-cols">
            <div class="expand-col text-ellipsis">
              <!-- Menu di stato -->
              <ul>
                <li><a href="index.html">Home</a></li>
                <li><a href="">Prodotti</a></li>
                <li><span>Elenco Prodotti</span></li>
              </ul>
            </div>
          </div>
        </div>
          
        <!-- Contenuto -->
        <div class="st-content">
          <div class="tab-content">
            <div class="tab-pane active" role="tabpanel" id="items">
              <div class="container-fluid">
                <div class="row">
                  <div class="col-md-7 mb">
                    <div class="form-group">
                      <div class="st-inputbar">
                        <div class="st-inputbar-btn">
                          <div class="select2-contented">
                            <select class="form-control" id="items-length" style="width: auto;" data-minimum-results-for-search="Infinity" data-dropdown-css-class="contented">
                              <option value="10">10</option>
                              <option value="50">50</option>
                              <option value="100">100</option>
                              <option value="-1">All</option>
                            </select>
                          </div>
                        </div>
                        <div class="st-inputbar-input">
                          <input class="form-control" id="items-search" type="text" placeholder="Cerca in prodotti">
                        </div>
                          <!--
                        <div class="st-inputbar-btn">
                          <div class="btn-group" id="items-filter-buttons">
                            <button class="btn btn-default" data-toggle="collapse" data-target="#items-filter">Filtri</button>
                          </div>
                        </div>
                          -->
                      </div>
                    </div>
                  </div>
                  <div class="col-md-5 mb">
                    <div class="form-group text-right">
                      <div class="btn-group dropdown">
                        <button class="btn btn-default dropdown-toggle disabled" id="items-selected" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">Selezionato<span class="caret"></span></button>
                        <ul class="dropdown-menu">
                          <li><a id="items-remove">Rimuovi</a></li>
                          <li><a id="items-activate">Attiva</a></li>
                          <li><a id="items-deactivate">Disattiva</a></li>
                          <li><a id="items-deselect">Deseleziona</a></li>
                        </ul>
                      </div>
                      <div class="btn-group dropdown hidden-xs" id="items-export">
                        <button class="btn btn-default dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">Esporta<span class="caret"></span></button>
                      </div>
                      <div class="btn-group"><a class="btn btn-success" href="app-product-form.jsp">Aggiungi Nuovo</a></div>
                    </div>
                  </div>
                </div>
                  <!--
                <div class="collapse in" id="items-filter">
                  <div class="row">
                    <div class="col-md-3 mb">
                      <div class="form-group">
                        <select class="select2-box form-control" id="items-category" data-placeholder="Reparto" style="width: 100%;">
                          <option value="-1" checked="checked">Tutti i reparti</option>
                        </select>
                      </div>
                    </div>
                    <div class="col-md-3 mb">
                      <div class="form-group">
                        <div class="slider-default">
                          <input class="hide" id="items-price" type="text" name="" value="">
                        </div>
                      </div>
                    </div>
                    <div class="col-md-3 mb">
                      <div class="form-group">
                        <button class="btn btn-default btn-block text-ellipsis" id="items-date" type="button"> <i class="fa fa-calendar"></i><span>Imposta l'intervallo delle date</span></button>
                      </div>
                    </div>
                    <div class="col-md-3 mb">
                      <div class="form-group">
                        <div class="checkbox">
                          <input id="items-active" type="checkbox">
                          <label for="items-active">Solo Attivi</label>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                  -->
                <div class="row">
                  <div class="col-md-12 mb">
                    <div class="st-panel st-panel--border">
                      <div class="st-panel__cont">
                        <div class="st-panel__header">
                          <div class="fluid-cols">
                            <div class="expand-col text-ellipsis"><span class="st-panel__title"><span>Prodotti</span> <small id="items-info"></small> </span></div>
                          </div>
                        </div>
                        <div class="st-panel__content">
                          <div class="tab-content">
                            <div class="table-responsive avoid-flicker" width="100%">
                              <table class="table table-bordered table-filled table-striped table-hover" id="items-table">
                                <thead>
                                  <tr>
                                    <th class="items-check content-width">
                                      <div class="checkbox condensed">
                                        <input class="table-select-all" id="items-all" type="checkbox">
                                        <label for="items-all"></label>
                                      </div>
                                    </th>
                                    <th class="items-name text-nowrap">Nome Prodotto</th>
                                    <th class="items-category text-nowrap">Reparto</th>
                                    <th class="items-price content-width">Prezzo</th>
                                    <th class="items-date content-width">Data</th>
                                    <th class="items-img content-width">Caratteristica</th>
                                    <th class="items-status content-width">Stato</th>
                                    <th class="items-action content-width">Azione</th>
                                  </tr>
                                </thead>
                                <tbody>
                                  <!-- Riga prodotto -->
                                  <tr>
                                    <td class="items-check content-width">
                                      <div class="checkbox condensed">
                                        <input id="p1" type="checkbox">
                                        <label for="p1"></label>
                                      </div>
                                    </td>
                                    <td class="items-name text-nowrap">Product 1</td>
                                    <td class="items-category text-nowrap" data-filter="1" data-search="Category 1">Reparto 1</td>
                                    <td class="items-price" data-filter="10.00">&euro; 10.00</td>
                                    <td class="items-date content-width" data-filter="1476903600000" data-sort="1476903600000" data-search="20 October 2016">20 Oct 2016</td>
                                    <td class="items-img text-center"><span><small>x</small> 3</span></td>
                                    <td class="items-status" data-filter="1" data-sort="1"><span class="label label-success">Attivo</span></td>
                                    <td class="items-action text-left">
                                      <div class="btn-group"><a class="btn btn-default btn-xs" href="#">Vista</a><a class="btn btn-default btn-xs" href="app-product-form.html">Modifica</a></div>
                                    </td>
                                  </tr>
                                  <!-- Fine riga prodotto -->
                                  
                                  <!-- Riga prodotto -->
                                  <tr>
                                    <td class="items-check content-width">
                                      <div class="checkbox condensed">
                                        <input id="p2" type="checkbox">
                                        <label for="p2"></label>
                                      </div>
                                    </td>
                                    <td class="items-name text-nowrap">Product 2</td>
                                    <td class="items-category text-nowrap" data-filter="1" data-search="Category 1">Reparto 1</td>
                                    <td class="items-price" data-filter="15.00">&euro; 15.00</td>
                                    <td class="items-date content-width" data-filter="1477594800000" data-sort="1477594800000" data-search="28 October 2016">28 Oct 2016</td>
                                    <td class="items-img text-center"><span><small>x</small> 2</span></td>
                                    <td class="items-status" data-filter="1" data-sort="1"><span class="label label-danger">Disabilitato</span></td>
                                    <td class="items-action text-left">
                                      <div class="btn-group"><a class="btn btn-default btn-xs" href="#">Vista</a><a class="btn btn-default btn-xs" href="app-product-form.html">Modifica</a></div>
                                    </td>
                                  </tr>
                                  <!-- Fine riga prodotto -->
                                  
                                </tbody>
                              </table>
                            </div>
                            <div class="text-center pagination-sm" id="items-pagination"></div>
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
    </div>
    <div class="modal fade" id="source-modal" tabindex="-1" role="dialog">
      <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <button class="close" type="button" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            <h4 class="modal-title"></h4>
          </div>
          <div class="modal-body">
            <div class="st-source st-source--copy">
              <div class="st-source__copy st-clip" data-clipboard-target="#source-code">Copia</div>
              <pre><code class="html" id="source-code"></code></pre>
            </div>
          </div>
          <div class="modal-footer">
            <button class="btn btn-default" type="button" data-dismiss="modal">Chiudi</button>
          </div>
        </div>
      </div>
    </div><!-- Common Libs JS -->
    <script src="js/libs.common.min.js"></script><!-- Common App Modules -->
    <script src="js/modules/app.js"></script>
    <script src="js/modules/layout/sidebar.js"></script>
    <script src="js/modules/layout/spanel.js"></script>
    <script src="js/modules/widgets/settings.js"></script>
    <script src="js/modules/widgets/notifications.js"></script><!-- Page Libs JS -->
    <script src="libs/datatables/js/jquery.dataTables.js"></script>
    <script src="libs/datatables/js/dataTables.bootstrap.js"></script>
    <script src="libs/datatables/js/dataTables.select.js"></script>
    <script src="libs/datatables/js/dataTables.buttons.js"></script>
    <script src="libs/datatables/js/buttons.print.js"></script>
    <script src="libs/datatables/js/buttons.html5.js"></script>
    <script src="libs/datatables/js/buttons.bootstrap.js"></script>
    <script src="libs/bootstrap-daterangepicker/daterangepicker.js"></script>
    <!-- Libs for pdf export, very heavy-->
    <script src="libs/pdfmake/pdfmake.min.js"></script>
    <script src="libs/pdfmake/vfs_fonts.js"></script>
    <script src="libs/fancybox/jquery.fancybox.pack.js"></script>
    <script src="libs/fancybox/helpers/jquery.fancybox-thumbs.js"></script><!-- Page App Modules -->
    <script src="js/modules/widgets/table.js"></script>
    <script src="js/modules/widgets/table-filter.js"></script>
    <script src="js/modules/pages/products.js"></script>
    <script src="js/modules/pages/categories.js"></script>
  </body>
</html>