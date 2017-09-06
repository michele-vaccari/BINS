<%    
    String tipoUtente= "ua";
%>

<div class="st-sidebar">
    <div class="st-sidebar__header"><a class="st-sidebar__logo" href="index.html">BINS</a>
      <div class="st-sidebar__mico st-sidebar__toggle"><i class="fa fa-bars"></i></div>
    </div>
    <div class="st-sidebar__cont">
      <div class="st-sidebar__scroll scrollbar">
        <div class="st-sidebar__nav">
          <ul>

            <% if (tipoUtente.equals("usa")) {%>
            <li><a href="widgets.html">
                <div class="fluid-cols">
                  <div class="min-col"><i class="fa fa-pie-chart st-sidebar__ico"></i></div>
                  <div class="expand-col text-ellipsis"><span class="st-sidebar__title">Statistiche</span></div>
                </div></a>
            </li><% } %>

            <li><a href="#">
                <div class="fluid-cols">
                  <div class="min-col"><i class="st-sidebar__ico">P</i></div>
                  <div class="expand-col text-ellipsis"><span class="st-sidebar__title">Prodotti</span></div>
                  <div class="min-col"><i class="fa fa-angle-right st-sidebar__arrow"></i></div>
                </div></a>
              <ul class="st-sidebar__nested">
                <li><a href="app-products.jsp"><span>Visualizza</span></a></li>
                <li><a href="app-product-form.jsp"><span>Inserisci</span></a></li>
              </ul>
            </li>

            <li><a href="#">
                <div class="fluid-cols">
                  <div class="min-col"><i class="st-sidebar__ico">M</i></div>
                  <div class="expand-col text-ellipsis"><span class="st-sidebar__title">Marchi</span></div>
                  <div class="min-col"><i class="fa fa-angle-right st-sidebar__arrow"></i></div>
                </div></a>
              <ul class="st-sidebar__nested">
                <li><a href="ui-buttons.html"><span>Visualizza</span></a></li>
                <li><a href="ui-tabs.html"><span>Inserisci</span></a></li>
              </ul>
            </li>

            <li><a href="#">
                <div class="fluid-cols">
                  <div class="min-col"><i class="st-sidebar__ico">C</i></div>
                  <div class="expand-col text-ellipsis"><span class="st-sidebar__title">Caratteristiche</span></div>
                  <div class="min-col"><i class="fa fa-angle-right st-sidebar__arrow"></i></div>
                </div></a>
              <ul class="st-sidebar__nested">
                <li><a href="ui-buttons.html"><span>Visualizza</span></a></li>
                <li><a href="ui-tabs.html"><span>Inserisci</span></a></li>
              </ul>
            </li>

            <li><a href="#">
                <div class="fluid-cols">
                  <div class="min-col"><i class="st-sidebar__ico">R</i></div>
                  <div class="expand-col text-ellipsis"><span class="st-sidebar__title">Ricette</span></div>
                  <div class="min-col"><i class="fa fa-angle-right st-sidebar__arrow"></i></div>
                </div></a>
              <ul class="st-sidebar__nested">
                <li><a href="ui-buttons.html"><span>Visualizza</span></a></li>
                <li><a href="ui-tabs.html"><span>Inserisci</span></a></li>
              </ul>
            </li>

            <% if (tipoUtente.equals("usa")) {%>
            <li><a href="#">
                <div class="fluid-cols">
                  <div class="min-col"><i class="st-sidebar__ico">UA</i></div>
                  <div class="expand-col text-ellipsis"><span class="st-sidebar__title">Utenti Amministratori</span></div>
                  <div class="min-col"><i class="fa fa-angle-right st-sidebar__arrow"></i></div>
                </div></a>
              <ul class="st-sidebar__nested">
                <li><a href="ui-buttons.html"><span>Visualizza</span></a></li>
                <li><a href="ui-tabs.html"><span>Inserisci</span></a></li>
              </ul>
            </li> <% } %>

            <li><a href="#">
                <div class="fluid-cols">
                  <div class="min-col"><i class="st-sidebar__ico">UR</i></div>
                  <div class="expand-col text-ellipsis"><span class="st-sidebar__title">Utenti Registrati</span></div>
                  <div class="min-col"><i class="fa fa-angle-right st-sidebar__arrow"></i></div>
                </div></a>
              <ul class="st-sidebar__nested">
                <li><a href="ui-buttons.html"><span>Visualizza</span></a></li>
                <li><a href="ui-tabs.html"><span>Inserisci</span></a></li>
              </ul>
            </li>

            <li><a href="#">
                <div class="fluid-cols">
                  <div class="min-col"><i class="st-sidebar__ico">C</i></div>
                  <div class="expand-col text-ellipsis"><span class="st-sidebar__title">Coupon</span></div>
                  <div class="min-col"><i class="fa fa-angle-right st-sidebar__arrow"></i></div>
                </div></a>
              <ul class="st-sidebar__nested">
                <li><a href="ui-buttons.html"><span>Visualizza</span></a></li>
                <li><a href="ui-tabs.html"><span>Inserisci</span></a></li>
              </ul>
            </li>

            <li><a href="#">
                <div class="fluid-cols">
                  <div class="min-col"><i class="st-sidebar__ico">O</i></div>
                  <div class="expand-col text-ellipsis"><span class="st-sidebar__title">Ordini</span></div>
                  <div class="min-col text-right"><span class="label label-success">8</span></div>
                </div></a>
            </li>

            <li><a href="#">
                <div class="fluid-cols">
                  <div class="min-col"><i class="st-sidebar__ico">F</i></div>
                  <div class="expand-col text-ellipsis"><span class="st-sidebar__title">Fatture</span></div>
                  <div class="min-col"><i class="fa fa-angle-right st-sidebar__arrow"></i></div>
                </div></a>
              <ul class="st-sidebar__nested">
                <li><a href="ui-buttons.html"><span>Visualizza</span></a></li>
                <li><a href="ui-tabs.html"><span>Inserisci</span></a></li>
              </ul>
            </li>

          </ul>
        </div>
      </div>
      <div class="st-sidebar__popup"></div>
    </div>
</div>