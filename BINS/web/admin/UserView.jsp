<%-- 
    Document   : UserView
    Author     : Michele
--%>

<%@ page info="Gestione Utenti" %>
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
                        <div class="expand-col text-ellipsis"><span class="st-panel__title"><span>Marche</span><small id="users-info"></small></span></div>
                        <div class="min-col">
                          <div class="st-panel__form">
                            <div class="st-inputbar hidden-xs">
                              <div class="st-inputbar-input hidden-xs">
                                <input class="form-control input-sm" id="users-search" type="text" placeholder="Cerca" style="width: 200px;">
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                    
                    <!-- Tabella -->
                    <div class="st-panel__content">
                      <div class="table-responsive table-responsive-bordered avoid-flicker" width="100%">
                        <table class="table table-bordered table-filled table-striped table-hover" id="users-table" width="100%">
                          
                          <!-- Intestazione Tabella -->
                          <thead>
                            <tr>
                              <th class="text-nowrap">Email</th>
                              <th class="text-nowrap">Nome</th>
                              <th class="text-nowrap">Cognome</th>
                              <th class="text-nowrap content-width">Data di registrazione</th>
                              <th class="text-nowrap content-width">Stato</th>
                              <th class="text-nowrap content-width">Ordini Effettuati</th>
                              <th class="text-nowrap content-width">Importo Ordini</th>
                              <th class="text-center content-width">Azione</th>
                            </tr>
                          </thead>
                          
                          <!-- Contenuto Tabella -->
                          <tbody>
                            
                            <tr data-user="user1@gmail.com">
                              <td class="text-nowrap" data-filter="user1@gmail.com">user1@gmail.com</td>
                              <td class="text-center" data-filter="User1Name">User1Name</td>
                              <td class="text-nowrap" data-filter="User1Surname">User1Surname</td>
                              <td class="text-center" data-sort="1476903600000" data-filter="20 Ottobre 2016">20 Ottobre 2016</td>
                              <td class="text-center" data-sort="1" data-filter="Attivo"><span class="label label-success">Attivo</span></td>
                              <td class="text-center" data-filter="4"><small>x</small>&nbsp;4</td>
                              <td class="text-center" data-filter="10.00">&euro; 10.00</td>
                              <td class="text-center st-users__action">
                                <div class="btn-group dropdown"><a class="btn btn-default btn-xs" href="#">Visualizza</a>
                                  <button class="btn btn-default btn-xs dropdown-toggle" type="button" data-toggle="dropdown" data-container="body"><span class="caret"></span></button>
                                  <ul class="dropdown-menu dropdown-menu-right">
                                    <li><a class="users-edit" data-user="user1@gmail.com">Modifica</a></li>
                                    <li><a class="users-disable" data-user="user1@gmail.com">Disattiva</a></li>
                                    <li><a class="users-remove" data-user="user1@gmail.com">Elimina</a></li>
                                  </ul>
                                </div>
                              </td>
                            </tr>
                            
                            <tr data-user="user2@gmail.com">
                              <td class="text-nowrap" data-filter="user2@gmail.com">user2@gmail.com</td>
                              <td class="text-center" data-filter="User2Name">User2Name</td>
                              <td class="text-nowrap" data-filter="User2Surname">User2Surname</td>
                              <td class="text-center" data-sort="1476903600000" data-filter="20 Ottobre 2016">20 Ottobre 2016</td>
                              <td class="text-center" data-sort="0" data-filter="In Attesa"><span class="label label-danger">Disattivato</span></td>
                              <td class="text-center" data-filter="3"><small>x</small>&nbsp;3</td>
                              <td class="text-center" data-filter="100.00">&euro; 100.00</td>
                              <td class="text-center st-users__action">
                                <div class="btn-group dropdown"><a class="btn btn-default btn-xs" href="#">Visualizza</a>
                                  <button class="btn btn-default btn-xs dropdown-toggle" type="button" data-toggle="dropdown" data-container="body"><span class="caret"></span></button>
                                  <ul class="dropdown-menu dropdown-menu-right">
                                    <li><a class="users-edit" data-user="user2@gmail.com">Modifica</a></li>
                                    <li><a class="users-disable" data-user="user2@gmail.com">Disattiva</a></li>
                                    <li><a class="users-remove" data-user="user2@gmail.com">Elimina</a></li>
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
                            <select class="form-control" id="users-length" style="width: auto;" data-minimum-results-for-search="Infinity" data-dropdown-css-class="contented">
                              <option value="10">10</option>
                              <option value="25">25</option>
                              <option value="50">50</option>
                              <option value="-1">Tutti</option>
                            </select>
                          </div>
                        </div>
                        <div class="pull-right">
                          <div class="pagination-sm" id="users-pagination"></div>
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
    <script src="js/modules/pages/userView.js"></script>
    
  </body>
  
</html>