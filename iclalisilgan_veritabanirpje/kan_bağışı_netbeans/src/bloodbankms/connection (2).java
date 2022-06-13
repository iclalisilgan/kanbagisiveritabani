package bloodbankms;

import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

public class connection {
    
    public static void main(String[] args){
        
        final String DB_URL="jdbc:mysql://localhost/BloodBankMS";
        final String USERNAME="root";
        final String PASSWORD="23071991.a";
        Connection conn=null;
        Statement stat=null;
           
        
        try {
            
            String sql = "SELECT * FROM bloodbankms.donor;";
            ResultSet rs = stat.executeQuery(sql);
            
            conn=DriverManager.getConnection(DB_URL,USERNAME,PASSWORD);
            System.out.println("Veritabani baglantisi gerceklestirildi.");
            stat=(Statement) conn.createStatement();
            
            
            } 
            catch (SQLException ex) 
            {
                System.out.println("Veritabani baglantisi gerceklesmedi.");
                Logger.getLogger(connection.class.getName()).log(Level.SEVERE, null, ex);
            }
            
        
        
        
        
    }
    
}
