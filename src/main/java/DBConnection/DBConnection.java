package DBConnection;



import java.sql.*;

public class DBConnection {
    Connection connection = null;

    public DBConnection() {
        try {
//            Class.forName("com.mysql.jdbc.Driver");
            Class.forName("com.mysql.cj.jdbc.Driver");

            String url = "jdbc:mysql://localhost:3306/college";
            String userName = "root";
            String password = "";
            this.connection = DriverManager.getConnection(url, userName, password);

            System.out.println("Database connected: ");

        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

//    public void Createdatabase() {
//
//
//        try {
////            Class.forName("com.mysql.cj.")
//            String url = "jdbc:mysql://localhost:3306/student";
//
//            String userName = "root";
//            String password = "";
//            Connection con = DriverManager.getConnection(url,userName,password);
//            Statement st = con.createStatement();
//            String query = "Insert into student values(1,'pratik','pratik@123','kathmandu')";
//            st.execute(query);
//            System.out.println("values is inserted sucessfully ");
//
//
//        }catch (SQLException e ){
//            e.printStackTrace();
//        }
//
//
//    }

    public static void main(String[] args) {
        DBConnection connection = new DBConnection();
//        connection.Createdatabase();
    }


    public PreparedStatement getStatement(String query) {

        PreparedStatement preparedStatement = null;

        try {
            preparedStatement = connection.prepareStatement(query);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return preparedStatement;

    }

    public PreparedStatement getSql(String sql) {

        PreparedStatement preparedStatement = null;

        try {
            preparedStatement = connection.prepareStatement(sql);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return preparedStatement;

    }
    public PreparedStatement getID(String ID){

        PreparedStatement preparedStatement = null;

        try {
            preparedStatement = connection.prepareStatement(ID);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return preparedStatement;
    }

}
