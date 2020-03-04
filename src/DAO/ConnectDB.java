/* @vannamsc */

package DAO;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class ConnectDB {

    private static Connection connect = null;

    public static Connection openConnect(){
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException ex) {
            try {
                throw new Exception("Invalid Driver!!Please check this drver....");
            } catch (Exception ex1) {
                Logger.getLogger(ConnectDB.class.getName()).log(Level.SEVERE, null, ex1);
            }
        }
        if (connect == null) {
            String url = "jdbc:mysql://localhost:3306/qlcnnh";
            try {
                connect = DriverManager.getConnection(url, "root", "doanxem1603");
            } catch (SQLException e) {
                try {
                    throw new Exception(e.getMessage() + "Connect failed to database ....");
                } catch (Exception ex) {
                    Logger.getLogger(ConnectDB.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
        return connect;
    }

    public static void main(String[] args){
        System.out.println(ConnectDB.openConnect());
    }
}
