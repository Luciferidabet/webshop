package giay.context;


import java.sql.Connection;
import java.sql.DriverManager;
import java.util.logging.Level;
import java.util.logging.Logger;


public class DBContext {
    
    /*USE BELOW METHOD FOR YOUR DATABASE CONNECTION FOR BOTH SINGLE AND MULTILPE SQL SERVER INSTANCE(s)*/
    /*DO NOT EDIT THE BELOW METHOD, YOU MUST USE ONLY THIS ONE FOR YOUR DATABASE CONNECTION*/
     public Connection getConnection()throws Exception {
        String connectionURL = "jdbc:mysql://" + hostName + ":3306/" + dbName;
        if(instance == null || instance.trim().isEmpty())
            connectionURL = "jdbc:mysql://" + hostName + ":3306/" + dbName;
        Class.forName("com.mysql.jdbc.Driver");
        return DriverManager.getConnection(connectionURL, userID, password);
    }
//      public String getImagePath() throws Exception {
//        return "image/";
//    }
    /*Insert your other code right after this comment*/
    /*Change/update information of your database connection, DO NOT change name of instance variables in this class*/
//    private final String hostName = "us-cdbr-east-05.cleardb.net";
//    private final String dbName = "heroku_4eb7344193bc60a";
//    private final String portNumber = "3306";
//    private final String instance="";//LEAVE THIS ONE EMPTY IF YOUR SQL IS A SINGLE INSTANCE
//    private final String userID = "b938ee1a2bbd43";
//    private final String password = "6cb5e652"; 
     
     //    MySQL - Local Database
    private final String hostName = "us-cdbr-east-06.cleardb.net";
    private final String dbName = "heroku_943bb3c74ab5137";
//    private final String portNumber = "3306";
    private final String instance="";//LEAVE THIS ONE EMPTY IF YOUR SQL IS A SINGLE INSTANCE
    private final String userID = "b111490a0d928e";
    private final String password = "e5a50f94";
    
    public static void main(String[] args) {
         try {
             System.out.println("Connection ID: " + new DBContext().getConnection());
         } catch (Exception ex) {
             Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);
         }
    }
}
 
