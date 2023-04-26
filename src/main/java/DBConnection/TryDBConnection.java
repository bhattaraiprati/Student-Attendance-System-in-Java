package DBConnection;

import javax.servlet.http.Cookie;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class TryDBConnection {
    private int a=9;
    public TryDBConnection() {
        try {
//            Class.forName("com.mysql.cj.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/college";
            String userName = "root";
            String password = "";

            Connection con = DriverManager.getConnection(url,userName,password);
            Statement st = con.createStatement();
            String query = "Insert into student values(1,'pratik','pratik@123','kathmandu')";
            st.execute(query);
            System.out.println("values is inserted successfully ");
//            Cookie cookie = new Cookie("k",a + "");


        }catch (SQLException e ){
            e.printStackTrace();
        }




    }

    public static void main(String[] args) {
        TryDBConnection conn = new TryDBConnection();

    }
}
