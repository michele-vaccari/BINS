/* Flusso della conversazione: username, password, nome, cognome */
package bflows;

import java.beans.*;
import javax.servlet.http.*;
import java.security.NoSuchAlgorithmException;

import util.MD5;
import services.databaseservice.*;
import services.databaseservice.exception.*;
import services.errorservice.*;
import services.sessionservice.*;
import blogics.*;

/**
 *
 * @author Michele
 */
public class LogonManagement extends Object implements java.io.Serializable {
  
  /* Variabili */
  private String email;
  private String password;
  private Cookie[] cookies;
  
  /* Costruttore */
  public LogonManagement() {}
  
  /* Metodo logon */
  public void logon() {
    
    DataBase database= null;
    
    try {
      database= DBService.getDataBase();
      Admin admin= AdminService.getAdmin(database, email);
      
      if (admin== null || !admin.getPassword().equals(MD5.md5(password))) {
        cookies= null;
      }
      else {
        cookies= Session.createCookie(database, admin.getEmail());
      }
    }
    catch (NotFoundDBException ex) {
      EService.logAndRecover(ex);
    }
    catch (ResultSetDBException ex) {
      EService.logAndRecover(ex);
    }
    catch (NoSuchAlgorithmException ex) {
      /* Gestire Eccezione */
    }
    finally {
      try {database.close();}
      catch (NotFoundDBException e) {EService.logAndRecover(e);}
    }
  }
  
  /* Metodo logout */
  public void logout() {
    cookies= Session.deleteCookie(cookies);
  }
  
  /* Metodi getter */
  public String getEmail() {
    return this.email;
  }
  public String getPassword() {
    return this.password;
  }
  public Cookie getCookies(int index) {
    return this.cookies[index];
  }
  public Cookie[] getCookies() {
    return this.cookies;
  }
  
  /* Metodi setter */
  public void setEmail(String email) {
    this.email= email;
  }
  public void setPassword(String password) {
    this.password= password;
  }
  public void setCookies(int index, Cookie cookies) {
    this.cookies[index]= cookies;
  }
  public void setCookies(Cookie[] cookies) {
    this.cookies= cookies;
  }
}
