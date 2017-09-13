<%-- 
    Document   : ProfileOverview
    Author     : Michele
--%>

<%@ page info="Panoramica Profilo" %>
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
        
        
        <div class="st-content st-profile">
          <div class="container-fluid">
            <div class="row">
              <div class="col-fixed mb">
                
                <div class="st-panel">
                  <div class="st-panel__cont">
                    <div class="st-panel__content">
                      
                      <div class="st-profile__photo">
                        <div class="st-profile__img" style="background-image: url('img/media/person-1.jpg');"></div>
                      </div>
                      
                      <!-- Nome e Cognome -->
                      <div class="st-profile__title"><span class="st-profile__name">Nome Cognome</span>
                        <div class="st-profile__role"><span class="label label-success">Manager</span></div>
                      </div>
                      
                      <div class="st-profile__info">
                        <div class="st-profile__field">
                          <div class="st-profile__value"><i class="fa fa-barcode"></i><span>SSN</span></div>
                        </div>
                        <div class="st-profile__field">
                          <div class="st-profile__value"><i class="fa fa-birthday-cake"></i><span>05/05/2017</span></div>
                        </div>
                        <div class="st-profile__field">
                          <div class="st-profile__value"><i class="fa fa-calendar"></i><span>05/05/2017</span></div>
                        </div>
                      </div>
                      
                      <div class="st-profile__field">
                          <div class="fluid-cols">
                            <div class="expand-col text-ellipsis text-center">hello@example.com</div>
                          </div>
                      </div>
                      
                    </div>
                  </div>
                </div>
                
              </div>
              
              <div class="col-fluid">
                <div class="st-panel">
                  <div class="st-panel__cont">
                    <div class="st-panel__content">
                      
                      <div class="air-tabs">
                        <ul class="nav nav-tabs st-profile__tabs" role="tablist">
                          <li class="active" role="presentation"><a href="#profile-overview" data-toggle="tab">Panoramica</a></li>
                          <li role="presentation"><a href="#profile-orders" data-toggle="tab">Ordini</a></li>
                          <li role="presentation"><a href="#profile-settings" data-toggle="tab">Impostazioni</a></li>
                        </ul>
                        
                        <div class="tabs-container">
                          <div class="tab-content">
                            <div class="tab-pane active" role="tabpanel" id="profile-overview">
                              <div class="st-profile-overview">
                                <div class="container-fluid no-paddings">
                                  <div class="row">
                                    
                                    <div class="col-md-6 mb">
                                      <h2>Generale</h2>
                                      <div class="table-responsive table-responsive-bordered">
                                        <table class="table table-bordered">
                                          <tbody>
                                            <tr>
                                              <td>Stato</td>
                                              <td class="content-width text-nowrap text-center"><span class="label label-success">Attivo</span></td>
                                            </tr>
                                            <tr>
                                              <td>Data di Nascita</td>
                                              <td class="content-width text-nowrap text-center">10/05/2017</td>
                                            </tr>
                                            <tr>
                                              <td>Data di Registrazione</td>
                                              <td class="content-width text-nowrap text-center">10/05/2017</td>
                                            </tr>
                                          </tbody>
                                        </table>
                                      </div>
                                    </div>
                                    
                                    <div class="col-md-6 mb">
                                      <h2>Ordini Gestiti</h2>
                                      <div class="table-responsive table-responsive-bordered">
                                        <table class="table table-bordered">
                                          <tbody>
                                            <tr>
                                              <td>Totali</td>
                                              <td class="content-width text-nowrap text-right">200</td>
                                            </tr>
                                            <tr>
                                              <td>Completati</td>
                                              <td class="content-width text-nowrap text-right"><span class="text-success">120</span>&nbsp;/&nbsp;<span>80</span></td>
                                            </tr>
                                            <tr>
                                              <td>Ultimo</td>
                                              <td class="content-width text-nowrap text-right">02/04/2017</td>
                                            </tr>
                                          </tbody>
                                        </table>
                                      </div>
                                    </div>
                                  </div>
                                  
                                </div>
                              </div>
                            </div>
                            
                            <div class="tab-pane" role="tabpanel" id="profile-orders">
                              <div class="table-responsive table-responsive-bordered" width="100%">
                                <table class="table table-bordered table-filled table-hover" id="profile-orders-table">
                                  <thead>
                                    <tr>
                                      <th class="text-nowrap">Id</th>
                                      <th class="content-width">Prezzo</th>
                                      <th class="content-width">Data</th>
                                      <th class="content-width">Stato</th>
                                      <th class="content-width">Visualizza</th>
                                    </tr>
                                  </thead>
                                  <tbody>
                                    <tr>
                                      <td class="text-nowrap">Test Row</td>
                                      <td data-filter="30">$30.00</td>
                                      <td class="text-nowrap" data-filter="1476903600000" data-sort="1476903600000" data-search="20 October 2016">20 Oct 2016 23:10</td>
                                      <td data-filter="1" data-sort="1"><span class="label label-success">Completed</span></td>
                                      <td class="text-right"><a class="btn btn-default btn-xs">Details</a></td>
                                    </tr>
                                  </tbody>
                                </table>
                              </div>
                              <div class="pagination-sm text-center" id="profile-orders-pagination"></div>
                            </div>
                            
                            <div class="tab-pane" role="tabpanel" id="profile-settings">
                              <div class="form st-profile-settings" id="profile-settings-form">
                                <div class="container-fluid no-paddings">
                                  <div class="row">
                                    <div class="col-md-12">
                                      <div class="st-profile-settings__section">
                                        <div class="st-profile-settings__title">Informazioni Account</div>
                                        <div class="container-fluid no-paddings">
                                          <div class="row">
                                            <div class="col-md-6">
                                              <div class="form-group">
                                                <label class="control-label">Nome</label>
                                                <input class="form-control" type="text" placeholder="John">
                                              </div>
                                            </div>
                                            <div class="col-md-6">
                                              <div class="form-group">
                                                <label class="control-label">Cognome</label>
                                                <input class="form-control" type="text" placeholder="Smith">
                                              </div>
                                            </div>
                                          </div>
                                          <div class="row">
                                            <div class="col-md-12">
                                              <div class="form-group">
                                                <label class="control-label">Email</label>
                                                <input class="form-control" type="email" placeholder="hello@example.com">
                                              </div>
                                            </div>
                                          </div>
                                        </div>
                                      </div>
                                      <div class="st-profile-settings__section">
                                        <div class="st-profile-settings__title">Cambia Password</div>
                                        <div class="container-fluid no-paddings">
                                          <div class="row">
                                            <div class="col-md-12">
                                              <div class="form-group">
                                                <label class="control-label">Nuova Password</label>
                                                <input class="form-control" type="password">
                                              </div>
                                            </div>
                                          </div>
                                          <div class="row">
                                            <div class="col-md-12">
                                              <div class="form-group">
                                                <label class="control-label">Conferma Password</label>
                                                <input class="form-control" type="password">
                                              </div>
                                            </div>
                                          </div>
                                        </div>
                                      </div>
                                      
                                    </div>
                                    
                                  </div>
                                  <div class="st-profile-settings__submit">
                                    <div class="btn btn-info" type="submit">Invia</div>
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
    <script src="libs/jquery-sparkline/jquery.sparkline.min.js"></script>
    <script src="libs/faker/faker.min.js"></script>
    <script src="libs/datatables/js/jquery.dataTables.js"></script>
    <script src="libs/datatables/js/dataTables.bootstrap.js"></script>
    <script src="libs/jasny-bootstrap/fileinput/fileinput.js"></script>
    
    <!-- Page App Modules -->
    <script src="js/modules/service/api.js"></script>
    <script src="js/modules/widgets/table.js"></script>
    <script src="js/modules/pages/profileOverview.js"></script>
    
  </body>
  
</html>