<%-- 
    Document   : SidebarMenu
    Author     : Michele
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page session="false" %>

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
                <div class="st-userpopup__name text-ellipsis">Admin1</div>
                <div class="st-userpopup__status"><span class="label label-success">Super Amministratore</span></div>
              </div>
            </div>
            <ul class="st-userpopup__menu">
              <li data-toggle="popup" data-target="#user-popup" data-method="hide"><a href="AdminForm.jsp">
                  <div class="fluid-cols">
                    <div class="expand-col text-ellipsis"><span>Profilo</span></div>
                    <div class="min-col"><i class="fa fa-user"></i></div>
                  </div></a></li>
              <li><a href="home.jsp">
                  <div class="fluid-cols">
                    <div class="expand-col text-ellipsis"><span>Log Out</span></div>
                    <div class="min-col"><i class="fa fa-sign-out"></i></div>
                  </div></a></li>
            </ul>
          </div>
        </div>
      </li>
    </ul>
</div>