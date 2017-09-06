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
    <link href="libs/fancybox/jquery.fancybox.css" rel="stylesheet">
    <link href="libs/fancybox/helpers/jquery.fancybox-thumbs.css" rel="stylesheet">
    <link href="libs/cropper/cropper.min.css" rel="stylesheet">
    <link href="libs/duallistbox/bootstrap-duallistbox.min.css" rel="stylesheet"><!-- Just Bootstrap Theme -->
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
              <div class="st-header__title"><span>Modulo Prodotto</span>
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
                <li><span>Modulo Prodotto</span></li>
              </ul>
            </div>
          </div>
        </div>
        
        <!-- Contenuto -->
        <div class="st-content">
          <div class="container-fluid">
            <div class="row">
              <div class="col-md-9 mb">
                <form id="product-form">
                  <div class="st-panel st-panel--border">
                    <div class="st-panel__cont">
                      <div class="st-panel__header">
                        <div class="fluid-cols">
                          <div class="expand-col text-ellipsis"><span class="st-panel__title"><span>Nuovo Prodotto</span><small id="product-form-subtitle">Informazioni principali</small></span></div>
                          <div class="min-col">
                            <div class="st-panel__tabs">
                              <ul class="nav nav-tabs" role="tablist" data-subtitle="#product-form-subtitle">
                                <li class="active" role="presentation"><a href="#info" data-toggle="tab">Informazioni</a></li>
                                <li role="presentation"><a href="#fields" data-toggle="tab">Caratteristiche</a></li>
                                <li role="presentation"><a href="#cover" data-toggle="tab">Immagine</a></li>
                              </ul>
                            </div>
                          </div>
                        </div>
                      </div>
                      <div class="st-panel__content">
                        <div class="tab-content">
                          <div class="tab-pane active" role="tabpanel" id="info">
                            <div class="form-horizontal">
                              <div class="form-group">
                                <label class="col-sm-2 mb control-label">EAN</label>
                                <div class="col-sm-2 mb">
                                  <input class="form-control" type="text" placeholder="EAN">
                                </div>
                              </div>
                              <div class="form-group">
                                <label class="col-sm-2 mb control-label">Nome Prodotto</label>
                                <div class="col-sm-10 mb">
                                  <input class="form-control" type="text" placeholder="Nome">
                                </div>
                              </div>
                              <div class="form-group">
                                <label class="col-sm-2 mb control-label">Descrizione</label>
                                <div class="col-sm-10 mb">
                                  <textarea class="form-control noresize" placeholder="Descrizione Prodotto" rows="5" style="height: 112px;"></textarea>
                                </div>
                              </div>
                              <div class="form-group">
                                <label class="col-sm-2 mb control-label">Prezzo Unitario</label>
                                <div class="col-sm-2 mb">
                                    <input class="form-control" type="text" placeholder="&euro; 0.00">
                                </div>
                              </div>
                              <div class="form-group">
                                <label class="col-sm-2 mb control-label">Peso Unitario (Kg)</label>
                                <div class="col-sm-2 mb">
                                  <input class="form-control" type="text" placeholder="0.1">
                                </div>
                              </div>
                              <div class="form-group">
                                <label class="col-sm-2 mb control-label">Quantit&agrave;</label>
                                <div class="col-sm-1 mb">
                                  <input class="form-control" type="text" placeholder="1">
                                </div>
                              </div>
                              
                              <div class="form-group">
                                <label class="col-sm-2 mb control-label">Marchio</label>
                                <div class="col-sm-10 mb">
                                  <select class="form-control" id="product-brand" data-placeholder="Marchio" data-minimum-results-for-search="Infinity" style="width: 100%;">
                                    <option></option>
                                    <option value="1">Marchio 1</option>
                                    <option value="2">Marchio 2</option>
                                    <option value="3">Marchio 3</option>
                                    <option value="4">Marchio 4</option>
                                  </select>
                                </div>
                              </div>
                              
                              <div class="form-group">
                                <label class="col-sm-2 mb control-label">Reparto</label>
                                <div class="col-sm-10 mb">
                                  <select class="form-control" id="product-category" data-placeholder="Reparto" data-minimum-results-for-search="Infinity" style="width: 100%;">
                                    <option></option>
                                    <option value="1">Reparto 1</option>
                                    <option value="2">Reparto 2</option>
                                    <option value="3">Reparto 3</option>
                                    <option value="4">Reparto 4</option>
                                  </select>
                                </div>
                              </div>
                              
                              <div class="form-group">
                                <label class="col-sm-2 mb control-label">Attivo</label>
                                <div class="col-sm-10 mb">
                                  <div class="radio radio-inline">
                                    <input type="radio" id="inlineRadio1" value="active" name="status" checked="checked">
                                    <label for="inlineRadio1">S&igrave;</label>
                                  </div>
                                  <div class="radio radio-inline">
                                    <input type="radio" id="inlineRadio2" value="disabled" name="status">
                                    <label for="inlineRadio2">No</label>
                                  </div>
                                </div>
                              </div>
                            </div>
                          </div>
                          
                          <!-- Caratteristiche -->
                          <div class="tab-pane" role="tabpanel" id="fields">
                            <div class="form form-horizontal">
                              <!-- Nascosto -->
                              <div class="form-group hide" id="product-field-template">
                                <div class="col-xs-5 col-sm-3">
                                  <select class="form-control" data-placeholder="Nome" style="width: 100%;">
                                    <option></option>
                                    <option value="1">Senza Glutine</option>
                                    <option value="2">Senza Latte</option>
                                    <option value="3">Vegano</option>
                                  </select>
                                </div>
                                <div class="col-xs-7 col-sm-9">
                                  <div class="st-inputbar-btn">
                                    <button class="remove-field btn btn-default" type="button"><i class="fa fa-minus"></i></button>
                                  </div>
                                </div>
                              </div>
                              
                              <!-- Visibile -->
                              <div class="form-group">
                                <div class="col-xs-5 col-sm-3">
                                  <select class="select2-box form-control" data-placeholder="Nome" style="width: 100%;">
                                    <option></option>
                                    <option value="1">Senza Glutine</option>
                                    <option value="2">Senza Latte</option>
                                    <option value="3">Vegano</option>
                                  </select>
                                </div>
                                <div class="col-xs-7 col-sm-9">
                                  <div class="st-inputbar-btn">
                                    <button class="remove-field btn btn-default" type="button"><i class="fa fa-minus"></i></button>
                                  </div>
                                </div>
                              </div>
                              
                              <!-- Bottone aggiungi -->
                              <div class="form-group">
                                <div class="col-xs-12">
                                  <button class="add-field btn btn-default" type="button"><i class="fa fa-plus"></i></button>
                                </div>
                              </div>
                            </div>
                          </div>
                          
                          <!-- Immagine -->
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
                                    <h2>Immagine Principale</h2>
                                    <div class="st-cropper__cont"><img class="st-cropper-img" src="http://lh3.ggpht.com/yV7Txp2Dgk7-k0OJFu8j7JcTCkwshvXo_U4yMSxQ1Aez1_XH5pwPUp5W0of6YwJjvolXqdpkFiRLjWKQZg=s620"></div>
                                  </div>
                                  <div class="col-sm-5 mb">
                                    <h2>Anteprima</h2>
                                    <div class="st-cropper__preview"></div>
                                    <div class="st-cropper__upload">
                                      <div class="btn-group">
                                        <label class="btn btn-info" for="cFile">
                                          <input class="hide" id="cFile" type="file" accept="image/*">Carica immagine
                                        </label>
                                        <button class="btn btn-info" id="cRemove" type="button">Rimuovi</button>
                                      </div>
                                    </div>
                                    <div class="st-cropper__actions">
                                      <div class="btn-group"><a class="btn btn-default" id="cPreview" href="#">Anteprima</a><a class="btn btn-default" id="cDownload" href="" download="ProductCover">Download</a>
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
                                          <label for="ratio5">Senza vincoli</label>
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
              <div class="col-md-3">
                <div class="panel panel-info">
                  <div class="panel-heading">Informazioni Principali</div>
                  <div class="panel-body">
                    <p>Riempire tutti i campi prima di registrare il prodotto. L'immagine deve essere preferibilmente su sfondo bianco.</p>
                  </div>
                </div>
                <div class="alert alert-danger">
                    <p>Attenzione! Ogni modifica registrata &egrave; permanente nel database.</p>
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
    <script src="libs/fancybox/jquery.fancybox.pack.js"></script>
    <script src="libs/fancybox/helpers/jquery.fancybox-thumbs.js"></script>
    <script src="libs/cropper/cropper.min.js"></script>
    <script src="libs/duallistbox/jquery.bootstrap-duallistbox.min.js"></script><!-- Page App Modules -->
    <script src="js/modules/widgets/cropper.js"></script>
    <script src="js/modules/pages/product-form.js"></script>
  </body>
</html>