package blogics;

import java.sql.*;

import services.databaseservice.*;
import services.databaseservice.exception.*;

/**
 *
 * @author Michele
 */
public class AdminService {
  
  /* Costruttore */
  public AdminService() {}
  
  /* Metodo getAdmin */
  public static Admin getAdmin(DataBase database, String email)
    throws NotFoundDBException, ResultSetDBException {
    
    Admin admin= null;
    
    String sql= "SELECT * " +
                "FROM utente_amministratore " +
                "WHERE " +
                "Email= '" + util.Conversion.getDatabaseString(email)+"'";
    
    ResultSet resultSet = database.select(sql);
    
    try {
      if (resultSet.next())
        admin= new Admin(resultSet);
      
      resultSet.close();
    }
    catch (SQLException ex) {
      throw new ResultSetDBException("AdminService: getAdmin():  ResultSetDBException: " + ex.getMessage(), database);
    }
    
    return admin;
  }
}