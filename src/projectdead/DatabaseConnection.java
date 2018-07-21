package projectdead;
import java.sql.*;
import javax.swing.JOptionPane;

public class DatabaseConnection {
    
    
    
public static Connection getConnection()
{
Connection conn =null;
    try{
Class.forName("com.mysql.jdbc.Driver");
 conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/shoestoredb","root","");

if(conn == null)
{ JOptionPane.showMessageDialog(null,"Failed to connect."); } 
    return conn;
    }
catch(Exception e){ System.out.println(e);
return null;
} 

} 
}