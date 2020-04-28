
package Connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Conexion {
    private String db = "punto_de_venta";
    private String user = "root";
    private String password = "";
    private String url = "jdbc:mysql://localhost/"+db;
    private Connection conn = null;

    public Conexion() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(this.url,this.user,this.password);
            if(conn!=null){
                System.out.println("Conexion a la base de datos "+this.db+" .....Listo");
            }
        } catch (Exception ex) {
            System.out.println("Error: "+ex);
        }
    }

    public Connection getConn() {
        return conn;
    }
    
}
