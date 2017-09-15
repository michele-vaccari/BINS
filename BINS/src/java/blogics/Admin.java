package blogics;

import java.sql.*;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.Date;

import util.*;

/**
 *
 * @author Michele
 */
public class Admin {
  
  /* Variabili */
  private String email;
  private String emailSuperAdmin;
  private String password;
  private Timestamp dataRegistrazione;
  private boolean attivo;
  private String nome;
  private String cognome;
  private GregorianCalendar dataNascita;
  private String codiceFiscale;
  private String urlImmagine;
  
  /* Costruttore con resultSet */
  public Admin(ResultSet resultSet) {
    
    try {email= resultSet.getString("Email");} catch (SQLException sqle) {}
    try {emailSuperAdmin= resultSet.getString("Email_USA");} catch (SQLException sqle) {}
    try {password= resultSet.getString("Password");} catch (SQLException sqle) {}
    try {dataRegistrazione= resultSet.getTimestamp("Data_di_registrazione");} catch (SQLException sqle) {}
    try {attivo= resultSet.getBoolean("Attivo");} catch (SQLException sqle) {}
    try {nome= resultSet.getString("Nome");} catch (SQLException sqle) {}
    try {cognome= resultSet.getString("Cognome");} catch (SQLException sqle) {}
    try {dataNascita.setTime(resultSet.getDate("Data_di_nascita"));} catch (SQLException sqle) {}
    try {codiceFiscale= resultSet.getString("Codice_fiscale");} catch (SQLException sqle) {}
    //try {urlImmagine= resultSet.getString("Immagine");} catch (SQLException sqle) {}
  }
  
  /* Metodi getter */
  public String getEmail() {
    return this.email;
  }
  public String getEmailSuperAdmin() {
    return this.emailSuperAdmin;
  }
  public String getPassword() {
    return this.password;
  }
  public Timestamp getDataRegistrazione() {
    return this.dataRegistrazione;
  }
  public boolean getAttivo() {
    return this.attivo;
  }
  public String getNome() {
    return this.nome;
  }
  public String getCognome() {
    return this.cognome;
  }
  public GregorianCalendar getDataNascita() {
    return this.dataNascita;
  }
  public String getCodiceFiscale() {
    return this.codiceFiscale;
  }
  public String getUrlImmagine() {
    return this.urlImmagine;
  }
  
  /* Metodi setter */
  public void setEmail(String email) {
    this.email= email;
  }
  public void setEmailSuperAdmin(String emailSuperAdmin) {
    this.emailSuperAdmin= emailSuperAdmin;
  }
  public void setPassword(String Password) {
    this.password= password;
  }
  public void setDataRegistrazione(Timestamp dataRegistrazione) {
    this.dataRegistrazione= dataRegistrazione;
  }
  public void setAttivo(boolean attivo) {
    this.attivo= attivo;
  }
  public void setNome(String nome) {
    this.nome= nome;
  }
  public void setCognome(String Cognome) {
    this.cognome= cognome;
  }
  public void setDataNascita(GregorianCalendar dataNascita) {
    this.dataNascita= dataNascita;
  }
  public void setCodiceFiscale(String codiceFiscale) {
    this.codiceFiscale= codiceFiscale;
  }
  public void setUrlImmagine(String urlImmagine) {
    this.urlImmagine= urlImmagine;
  }
  
}