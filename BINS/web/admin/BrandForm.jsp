<%-- 
    Document   : BrandForm
    Author     : Michele
--%>

<%@ page info="Modulo Marca" %>
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
              
              <!-- Modulo Marca -->
              <div class="col-md-12 mb">
                <form id="brand-form">
                  <div class="st-panel st-panel--border">
                    <div class="st-panel__cont">
                      
                      <!-- Intestazione Pannello -->
                      <div class="st-panel__header">
                        <div class="fluid-cols">
                          <div class="expand-col text-ellipsis"><span class="st-panel__title">Inserisci Marca</span></div>
                          <div class="min-col">
                            
                            <!-- Schede Pannello -->
                            <div class="st-panel__tabs">
                              <ul class="nav nav-tabs" role="tablist">
                                <li class="active" role="presentation"><a href="#info" data-toggle="tab">Info</a></li>
                                <li role="presentation"><a href="#cover" data-toggle="tab">Immagine</a></li>
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
                              
                              <!-- Nome -->
                              <div class="form-group">
                                <label class="col-sm-2 mb control-label">Nome Marca</label>
                                <div class="col-sm-10 mb">
                                  <input class="form-control" type="text" placeholder="Nome">
                                </div>
                              </div>
                              
                              <!-- Descrizione -->
                              <div class="form-group">
                                <label class="col-sm-2 mb control-label">Descrizione</label>
                                <div class="col-sm-10 mb">
                                  <textarea class="form-control noresize" placeholder="Descrizione Marca" rows="5" style="height: 112px;"></textarea>
                                </div>
                              </div>
                              
                            </div>
                          </div>
                          
                          <!-- Scheda Immagine -->
                          <div class="tab-pane" role="tabpanel" id="cover">
                            <div class="st-cropper">
                              <input class="hide" id="cRemoved" type="hidden" name="cRemoved" value="0">
                              <input class="hide" id="cDataX" type="hidden" name="cDataX" value="5">
                              <input class="hide" id="cDataY" type="hidden" name="cDataY" value="5">
                              <input class="hide" id="cDataHeight" type="hidden" name="cDataHeight" value="10">
                              <input class="hide" id="cDataWidth" type="hidden" name="cDataWidth" value="10">
                              <input class="hide" id="cDataScaleX" type="hidden" name="cDataScaleX" value="2">
                              <input class="hide" id="cDataScaleY" type="hidden" name="cDataScaleY" value="2">
                              <input class="hide" id="cDataRotate" type="hidden" name="cDataRotate" value="">
                              <input class="hide" id="cDataBoxLeft" type="hidden" name="cDataBoxLeft" value="">
                              <input class="hide" id="cDataBoxTop" type="hidden" name="cDataBoxTop" value="">
                              <input class="hide" id="cDataBoxWidth" type="hidden" name="cDataBoxWidth" value="">
                              <input class="hide" id="cDataBoxHeight" type="hidden" name="cDataBoxHeight" value="">
                              <div class="container-fluid no-paddings">
                                <div class="row">
                                  <div class="col-sm-7 mb">
                                    <h2>Immagine</h2>
                                    <div class="st-cropper__cont"><img class="st-cropper-img" src="http://lh3.ggpht.com/yV7Txp2Dgk7-k0OJFu8j7JcTCkwshvXo_U4yMSxQ1Aez1_XH5pwPUp5W0of6YwJjvolXqdpkFiRLjWKQZg=s620"></div>
                                  </div>
                                  <div class="col-sm-5 mb">
                                    <h2>Anteprima</h2>
                                    <div class="st-cropper__preview"></div>
                                    <div class="st-cropper__upload">
                                      <div class="btn-group">
                                        <label class="btn btn-info" for="cFile">
                                          <input class="hide" id="cFile" type="file" accept="image/*">Carica Immagine
                                        </label>
                                        <button class="btn btn-info" id="cRemove" type="button">Rimuovi</button>
                                      </div>
                                    </div>
                                    <div class="st-cropper__actions">
                                      <div class="btn-group"><a class="btn btn-default" id="cPreview" href="#">Anteprima</a><a class="btn btn-default" id="cDownload" href="" download="NomeMarca">Download</a>
                                        <button class="btn btn-default disabled" id="cRestore" type="button">Ripristina</button>
                                      </div>
                                    </div>
                                    <div class="st-cropper__ratio">
                                      <h2>Proporzioni</h2>
                                      <div>
                                        <div class="radio radio-inline">
                                          <input type="radio" id="ratio1" value="1.777777777" name="cDataRatio" checked="checked">
                                          <label for="ratio1">16:9</label>
                                        </div>
                                        <div class="radio radio-inline">
                                          <input type="radio" id="ratio2" value="1.333333333" name="cDataRatio">
                                          <label for="ratio2">4:3</label>
                                        </div>
                                        <div class="radio radio-inline">
                                          <input type="radio" id="ratio3" value="1" name="cDataRatio">
                                          <label for="ratio3">1:1</label>
                                        </div>
                                        <div class="radio radio-inline">
                                          <input type="radio" id="ratio4" value="0.666666666" name="cDataRatio">
                                          <label for="ratio4">2:3</label>
                                        </div>
                                        <div class="radio radio-inline">
                                          <input type="radio" id="ratio5" value="NaN" name="cDataRatio">
                                          <label for="ratio5">Libera</label>
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
    <script src="libs/fancybox/jquery.fancybox.pack.js"></script>
    <script src="libs/fancybox/helpers/jquery.fancybox-thumbs.js"></script>
    <script src="libs/cropper/cropper.min.js"></script>
    <script src="libs/duallistbox/jquery.bootstrap-duallistbox.min.js"></script>
    
    <!-- Page App Modules -->
    <script src="js/modules/widgets/cropper.js"></script>
    <script src="js/modules/pages/brandForm.js"></script>
    
  </body>
  
</html>