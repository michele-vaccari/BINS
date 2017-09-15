package util;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/**
 *
 * @author Michele
 */
public class MD5 {
  
  /* Costruttore nascosto */
  private MD5() {}
  
  /* Conversione di una stringa in MD5 */
  public static String md5(String message)
    throws NoSuchAlgorithmException {
    
    MessageDigest md;
    
    try {
      md= MessageDigest.getInstance("MD5");
    }
    catch (NoSuchAlgorithmException ex) {
      throw new NoSuchAlgorithmException("Errore. Non esiste un tale algoritmo.");
    }
    
    StringBuffer sb= new StringBuffer();
    byte[] messDig5= md.digest(message.getBytes());
    
    for(int i=0; i<messDig5.length; i++) {
      String tmpStr= "0" + Integer.toHexString((0xff & messDig5[i]));
      sb.append(tmpStr.substring(tmpStr.length()-2));
    }
    
    return sb.toString();
  }
}
