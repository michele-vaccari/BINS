<%-- 
    Document   : SidebarMenu
    Author     : Michele
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page session="false" %>

<div class="st-sidebar">
    <div class="st-sidebar__header"><a class="st-sidebar__logo" href="#">BINS</a>
      <div class="st-sidebar__mico st-sidebar__toggle"><i class="fa fa-bars"></i></div>
    </div>
    <div class="st-sidebar__cont">
      <div class="st-sidebar__scroll scrollbar">
        <div class="st-sidebar__nav">
          <ul>
            
            <!-- Panoramica -->
            <li><a href="ProfileOverview.jsp">
                    <div class="fluid-cols">
                      <div class="min-col"><i class="fa fa-star st-sidebar__ico"></i></div>
                      <div class="expand-col text-ellipsis"><span class="st-sidebar__title">Panoramica</span></div>
                    </div></a>
            </li>
            
            <!-- Prodotti -->
            <li><a href="#">
                <div class="fluid-cols">
                  <div class="min-col"><i class="st-sidebar__ico">P</i></div>
                  <div class="expand-col text-ellipsis"><span class="st-sidebar__title">Prodotti</span></div>
                  <div class="min-col"><i class="fa fa-angle-right st-sidebar__arrow"></i></div>
                </div></a>
              <ul class="st-sidebar__nested">
                <li><a href="ProductView.jsp"><span>Visualizza</span></a></li>
                <li><a href="ProductForm.jsp"><span>Inserisci</span></a></li>
              </ul>
            </li>
            
            <!-- Giacenza -->
            <li><a href="#">
                <div class="fluid-cols">
                  <div class="min-col"><i class="st-sidebar__ico">G</i></div>
                  <div class="expand-col text-ellipsis"><span class="st-sidebar__title">Giacenza</span></div>
                  <div class="min-col"><i class="fa fa-angle-right st-sidebar__arrow"></i></div>
                </div></a>
              <ul class="st-sidebar__nested">
                <li><a href="StockView.jsp"><span>Visualizza</span></a></li>
                <li><a href="#">
                    <div class="fluid-cols">
                      <div class="expand-col text-ellipsis"><span class="st-sidebar__title">Inserisci</span></div>
                      <div class="min-col"><i class="fa fa-angle-right st-sidebar__arrow"></i></div>
                    </div></a>
                  <ul class="st-sidebar__nested">
                    <li><a href="StockForm.jsp"><span>Deperibile</span></a></li>
                    <li><a href="StockForm.jsp"><span>Non Deperibile</span></a></li>
                  </ul>
                </li>
              </ul>
            </li>
            
            <!-- Marche -->
            <li><a href="#">
                <div class="fluid-cols">
                  <div class="min-col"><i class="st-sidebar__ico">M</i></div>
                  <div class="expand-col text-ellipsis"><span class="st-sidebar__title">Marchi</span></div>
                  <div class="min-col"><i class="fa fa-angle-right st-sidebar__arrow"></i></div>
                </div></a>
              <ul class="st-sidebar__nested">
                <li><a href="BrandView.jsp"><span>Visualizza</span></a></li>
                <li><a href="BrandForm.jsp"><span>Inserisci</span></a></li>
              </ul>
            </li>
            
            <!-- Reparti -->
            <li><a href="#">
                <div class="fluid-cols">
                  <div class="min-col"><i class="st-sidebar__ico">R</i></div>
                  <div class="expand-col text-ellipsis"><span class="st-sidebar__title">Reparti</span></div>
                  <div class="min-col"><i class="fa fa-angle-right st-sidebar__arrow"></i></div>
                </div></a>
              <ul class="st-sidebar__nested">
                <li><a href="WardView.jsp"><span>Visualizza</span></a></li>
                <li><a href="WardForm.jsp"><span>Inserisci</span></a></li>
              </ul>
            </li>
            
            <!-- Caratteristiche -->
            <li><a href="#">
                <div class="fluid-cols">
                  <div class="min-col"><i class="st-sidebar__ico">C</i></div>
                  <div class="expand-col text-ellipsis"><span class="st-sidebar__title">Caratteristiche</span></div>
                  <div class="min-col"><i class="fa fa-angle-right st-sidebar__arrow"></i></div>
                </div></a>
              <ul class="st-sidebar__nested">
                <li><a href="FeatureView.jsp"><span>Visualizza</span></a></li>
                <li><a href="FeatureForm.jsp"><span>Inserisci</span></a></li>
              </ul>
            </li>
            
            <!-- Utenti -->
            <li><a href="#">
                <div class="fluid-cols">
                  <div class="min-col"><i class="st-sidebar__ico">U</i></div>
                  <div class="expand-col text-ellipsis"><span class="st-sidebar__title">Utenti</span></div>
                  <div class="min-col"><i class="fa fa-angle-right st-sidebar__arrow"></i></div>
                </div></a>
              <ul class="st-sidebar__nested">
                <li><a href="UserView.jsp"><span>Visualizza</span></a></li>
              </ul>
            </li>
            
            <!-- Amministratori -->
            <li><a href="#">
                <div class="fluid-cols">
                  <div class="min-col"><i class="st-sidebar__ico">A</i></div>
                  <div class="expand-col text-ellipsis"><span class="st-sidebar__title">Amministratori</span></div>
                  <div class="min-col"><i class="fa fa-angle-right st-sidebar__arrow"></i></div>
                </div></a>
              <ul class="st-sidebar__nested">
                <li><a href="AdminView.jsp"><span>Visualizza</span></a></li>
                <li><a href="AdminForm.jsp"><span>Inserisci</span></a></li>
              </ul>
            </li>
            
            <!-- Coupon -->
            <li><a href="#">
                <div class="fluid-cols">
                  <div class="min-col"><i class="st-sidebar__ico">C</i></div>
                  <div class="expand-col text-ellipsis"><span class="st-sidebar__title">Coupon</span></div>
                  <div class="min-col"><i class="fa fa-angle-right st-sidebar__arrow"></i></div>
                </div></a>
              <ul class="st-sidebar__nested">
                <li><a href="CouponView.jsp"><span>Visualizza</span></a></li>
                <li><a href="CouponForm.jsp"><span>Inserisci</span></a></li>
              </ul>
            </li>
            
            <!-- Ordini -->
            <li><a href="OrderView.jsp">
                <div class="fluid-cols">
                  <div class="min-col"><i class="st-sidebar__ico">O</i></div>
                  <div class="expand-col text-ellipsis"><span class="st-sidebar__title">Ordini</span></div>
                  <div class="min-col text-right"><span class="label label-success">8</span></div>
                </div></a>
            </li>
            
          </ul>
        </div>
      </div>
      <div class="st-sidebar__popup"></div>
    </div>
</div>