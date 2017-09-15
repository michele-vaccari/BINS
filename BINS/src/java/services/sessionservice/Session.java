/*
 * Session.java
 *
 */

package services.sessionservice;

import java.util.*;
import javax.servlet.http.*;

//import util.*;
import services.errorservice.*;
import services.databaseservice.*;
import services.databaseservice.exception.*;


//import blogics.*;

public class Session {
  
  public Session() {}
  
  public static Cookie[] createCookie(DataBase database, String userCode) 
  throws NotFoundDBException,ResultSetDBException {
    
    Cookie[] cookies=new Cookie[2];
    Cookie cookie;
    
//    User user=UserService.getUser(database,userCode);
//    
//    cookie=new Cookie("userCode",user.userCode);
//    cookies[0]=cookie;
//    
//    cookie=new Cookie("userName",user.firstname+"#"+user.surname);
//    cookies[1]=cookie;
//    
//    for (int i=0; i<cookies.length; i++) {
//      cookies[i].setPath("/");
//    }
    
    return cookies;
  }
  
  public static String getValue(Cookie cookies[], String name, int position) {
    
    int i;
    boolean found=false;
    String value=null;
    
    for (i=0;i<cookies.length && !found;i++)
      if (cookies[i].getName().equals(name)) {
        Vector oV = util.Conversion.tokenizeString(cookies[i].getValue(),"#");
        value=(String)oV.elementAt(position);
        found=true;
      }        
    
    return value;
    
  }
  
  public static String getUserCode(Cookie[] cookies) {
    return getValue(cookies, "userCode", 0);
  }
  
  public static String getUserFirstname(Cookie[] cookies) {
    return getValue(cookies, "userName", 0);
  }
  
  public static String getUserSurname(Cookie[] cookies) {
    return getValue(cookies, "userName", 1);
  } 
    
  public static Cookie[] deleteCookie(Cookie[] cookies) {
    
    for (int i=0; i<cookies.length; i++) {
      cookies[i].setMaxAge(0);
      cookies[i].setPath("/");
    }
    
    return cookies;
  }  
  
  public static void showCookies(Cookie[] cookies){
    
    util.Debug.println("Cookie presenti:" + cookies.length);
    int i;
    for (i=0;i< cookies.length;i++)
      util.Debug.println("Nome:" + cookies[i].getName() + " Valore:" +cookies[i].getValue());
  }

}